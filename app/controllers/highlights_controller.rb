require 'kindle_highlights'

class HighlightsController < ApplicationController
  before_action :set_highlight, only: [:show, :edit, :update, :destroy, :fav, :unfav]
  before_action :set_source, only: [:new, :create]
  before_action :set_tag, only: :tags

  # i think we don't need this one
  def index
    #@highlights = current_user.highlights.includes(:taggings, source: :author).order(created_at: :desc)
  end

  # i think we don't need this one
  def show
  end

  def edit
  end

  def update # still wip
    @highlight.update(note_tag_param)
    if @highlight.save
      redirect_to favorites_highlights_path # do smtng here
    else
      render :edit
    end
  end

  def destroy
    @highlight.destroy
    redirect_to favorites_highlights_path, notice: "Highlight was succsesfully removed!"
  end

  def fav
    current_user.favorite(@highlight)
    redirect_back(fallback_location: 'pages#home')
  end

  def unfav
    current_user.unfavorite(@highlight)
    redirect_back(fallback_location: 'pages#home')
  end

  def flashcards
    @highlights = current_user.highlights.includes(source: :author)
    @flashcards = []
    if @highlights.empty?
      @msg = "You have no highlights!"
    elsif @highlights.count <= 7
      @flashcards = @highlights
    else
      # run this every 24 hours or smtng like that => gem whenever => https://github.com/javan/whenever ?
      while @flashcards.length < 7 do
        @flashcards <<  @highlights.sample
        @flashcards.uniq!
      end
    end
  end

  def favorites
    @highlights = current_user.all_favorited.reverse!
  end

  def tags
    @tagged_highlights = current_user.highlights.includes(:taggings, source: :author).tagged_with(["#{@tag}"], :any => true)
  end

  def all_tags
    @all_tags = current_user.highlights.includes(:taggings, source: :author).tag_counts_on(:tags).order(created_at: :desc)
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
