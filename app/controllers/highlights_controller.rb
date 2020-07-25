class HighlightsController < ApplicationController

  def flashcards # check
    @highlights = Highlight.all
    @flashcards = Array.new(7, @highlights.sample)
  end

  def highlight_params
    params.require(:highlight).permit(:content, :page, :favorite, :source_id, :user_id, :tag_list)
  end
end
