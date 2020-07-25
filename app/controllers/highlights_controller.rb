class HighlightsController < ApplicationController
  before_action :set_highlight, only: [:show, :destroy]

  def index
    @highlights = Highlight.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @highlight = Highlight.new
  end

  def create
    @highlight = Highlight.new(highlight_params)
    if @highlight.save
      redirect_to highlights_path
    else
      render :new
    end
  end

  def destroy
    @highlight.destroy
    redirect_to highlights_path, notice: "Highlight was succsesfully removed!"
  end

  def flashcards
    @highlights = Highlight.all
    @flashcards = Array.new(7, @highlights.sample)
  end

  private

  def set_highlight
    @highlight = Highlight.find(params[:id])
  end

  def highlight_params
    params.require(:highlight).permit(:content, :page, :favorite, :source_id, :user_id, :tag_list)
  end
end
