class HighlightsController < ApplicationController
  before_action :set_highlight, only: [:show, :edit, :update, :destroy]
  before_action :set_source, only: [:new, :create]

  def index
    @highlights = Highlight.all.order(created_at: :desc)
  end

  # i think we don't need this one
  def show
  end

  def new
    @highlight = Highlight.new
    @highlight.user = current_user
    @highlight.source = @source
  end

  def create
    @highlight = Highlight.new(highlight_params)
    if @highlight.save
      redirect_to highlights_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    # just favorite & tags # wip
    @highlight.update(fav_tag_param)
    if @highlight.save
      redirect_to highlights_path
    else
      render :edit
    end
  end

  def destroy
    @highlight.destroy
    redirect_to highlights_path, notice: "Highlight was succsesfully removed!"
  end

  def flashcards
    @highlights = Highlight.all
    @flashcards = []
    while @flashcards.length < 7 do
      @flashcards <<  @highlights.sample
      @flashcards.uniq!
    end
  end

  def favorites
    @highlights = Highlight.where(favorite: true)
  end

  private

  def set_highlight
    @highlight = Highlight.find(params[:id])
  end

  def set_source
    @source = Source.find(params[:source_id])
  end

  def highlight_params
    params.require(:highlight).permit(:content, :page, :favorite, :source_id, :user_id, :tag_list)
  end

  def fav_tag_param
    params.require(:highlight).permit(:favorite, :tag_list)
  end
end
