class ImagesController < ApplicationController
  def create
    highlight = Highlight.find(params[:highlight_id])
    @image = Image.create(highlight: highlight, content: params[:content])
  end

  def show
    @image = Image.find(params[:id])
  end
end
