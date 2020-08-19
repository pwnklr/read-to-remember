class SourcesController < ApplicationController
  before_action :set_source, only: :show

  def show
  end

  def library
    if params[:select]
      if params[:select] == '2' # author
        @books = current_user.sources.where(category: 'book').includes(:author).joins(:author).select("name, split_part(name, ' ', 2) as last_name").order("last_name")
      elsif params[:select] == '3' # title
        @books = current_user.sources.where(category: 'book').includes(:author).order(title: :asc)
      elsif params[:select] == '4' # highlights
        @books = current_user.sources.where(category: 'book').includes(:author).left_joins(:highlights).group(:id).order('COUNT(highlights.id) DESC')
      else
        @books = current_user.sources.where(category: 'book').includes(:author).order(created_at: :desc)
      end
    else
      @books = current_user.sources.where(category: 'book').includes(:author).order(created_at: :desc)
    end
  end

  def articles
    if params[:select_a]
      if params[:select_a] == '2' # author
        @articles =  current_user.sources.where(category: 'article').includes(:author).joins(:author).select("name, split_part(name, ' ', 2) as last_name").order("last_name")
      elsif params[:select_a] == '3' # title
        @articles = current_user.sources.where(category: 'article').includes(:author).order(title: :asc)
      elsif params[:select] == '4' # highlights
        @articles = current_user.sources.where(category: 'article').includes(:author).left_joins(:highlights).group(:id).order('COUNT(highlights.id) DESC')
      else
        @articles = current_user.sources.where(category: 'article').includes(:author).order(created_at: :desc)
      end
    else
      @articles = current_user.sources.where(category: 'article').includes(:author).order(created_at: :desc)
    end
  end

  private

  def set_source
    @source = Source.find(params[:id])
  end

  def source_params
    params.require(:source).permit(:title, :publishing_year, :category, :author_id, :photo)
  end
end
