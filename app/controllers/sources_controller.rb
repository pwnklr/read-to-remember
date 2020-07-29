class SourcesController < ApplicationController
  before_action :set_source, only: :show

  def show
  end

  def new
  end

  def create # wip
    @source = Source.create!(source_params)
  end

  def library
    @books = Source.where(category: 'book').order(created_at: :desc)
  end

  def books
  end

  def articles
    @articles = Source.where(category: 'article').order(created_at: :desc)
  end

  private

  def set_source
    @source = Source.find(params[:id])
  end

  def source_params
    params.require(:source).permit(:title, :publishing_year, :category, :author_id, :photo)
  end
end
