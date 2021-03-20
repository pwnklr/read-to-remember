class HighlightsController < ApplicationController
  before_action :set_highlight, only: [:edit, :update, :destroy, :fav, :unfav, :export]
  before_action :set_tag, only: :tags
  respond_to :html, :js
  #after_action :destroy_file, only: :export

  # search here
  def index
    if params[:query].present?
      @query = params[:query]
      @highlights = current_user.highlights.includes(:source, :taggings,  source: :author).global_search(@query)
      @count = @highlights.size
    else
      @highlights = []
    end
  end

  def edit
  end

  def update
    if @highlight.update(note_tag_param)
      respond_to :js
    end
  end

  def destroy # works (except: carousel)
    @highlight.destroy
    # respond_to :js
    # flash[:notice] = 'Highlight was succsesfully removed!'
  end

  def fav # works!
    current_user.favorite(@highlight)
    #redirect_back(fallback_location: 'pages#home')
    # respond_to do |format|
    #   format.js
    # end
  end

  def unfav # works!
    current_user.unfavorite(@highlight)
    #redirect_back(fallback_location: 'pages#home')
    # respond_to do |format|
    #  format.js
    # end
  end

  def export # works!
    # generate file:
    directory_name = "public/data"
    Dir.mkdir(directory_name) unless File.exists?(directory_name)
    file_path = "#{directory_name}/read_to_remember_#{current_user.id}.md"
    File.open(file_path, "w+") do |file|
      file << "# #{@highlight.source.title}\n\n"
      file << "## #{@highlight.source.author.name}\n\n"
      file << "#{@highlight.content}\n\n"
      file << "page: #{@highlight.page}\n\n"
      if !@highlight.my_note.nil? && @highlight.my_note.match(/[^\s]/)
        file << "note: #{@highlight.my_note}"
      end
    end
    # destroy file
    sleep(2)
    File.open(file_path, "w+") do |file|
      file << ""
    end
  end

  def flashcards
    @flashcards = current_user.flashcards
  end

  def favorites
    @highlights = current_user.highlights.includes(:taggings, source: :author).joins('INNER JOIN favorites on highlights.id = favorites.favoritable_id').order('favorites.created_at desc')
  end

  def tags
    @tagged_highlights = current_user.highlights.includes(:taggings, source: :author).tagged_with(["#{@tag}"], :any => true)
  end

  def all_tags
    if params[:select_t]
      if params[:select_t] == '2' # amount
        @all_tags = current_user.highlights.includes(:taggings, source: :author).tag_counts_on(:tags).order(taggings_count: :desc)
      else
        @all_tags = current_user.highlights.includes(:taggings, source: :author).tag_counts_on(:tags).order(created_at: :desc)
      end
    else
      @all_tags = current_user.highlights.includes(:taggings, source: :author).tag_counts_on(:tags).order(created_at: :desc)
    end
  end

  private

  def set_highlight
    @highlight = Highlight.find(params[:id])
  end

  def set_tag
    @tag = params[:format]
  end

  def highlight_params
    params.require(:highlight).permit(:content, :page, :favorite, :source_id, :user_id, :tag_list)
  end

  def note_tag_param
    params.require(:highlight).permit(:h_note, :my_note, :tag_list)
  end
end
