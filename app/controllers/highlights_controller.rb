class HighlightsController < ApplicationController
  before_action :set_highlight, only: [:edit, :update, :destroy, :fav, :unfav]
  before_action :set_source, only: [:new, :create]
  before_action :set_tag, only: :tags
  respond_to :html, :js

  # search here
  def index
    if params[:query].present?
      @query = params[:query]
      @highlights = current_user.highlights.includes(:source).global_search(@query)
      @count = @highlights.size
    else
      @highlights = []
    end
  end

  def edit
  end

  def update # still wip
    if @highlight.update(note_tag_param)
      respond_to do |format|
        format.html {redirect_back(fallback_location: 'pages#home')}
        format.json
        format.js
      end
    end
  end

  def destroy
    @highlight.destroy
    redirect_back(fallback_location: 'pages#home') #notice: "Highlight was succsesfully removed!"
  end

  def fav
    current_user.favorite(@highlight)
    respond_to do |format|
      format.js
    end
  end

  def unfav
    current_user.unfavorite(@highlight)
    respond_to do |format|
      format.js
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

  def set_source
    @source = Source.find(params[:source_id])
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
