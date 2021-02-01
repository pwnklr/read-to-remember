class SourcesController < ApplicationController
  before_action :set_source, only: [:show, :export_book]

  def show
  end

  def export_book
  end

  def export_many
    directory_name = "public/data"
    Dir.mkdir(directory_name) unless File.exists?(directory_name)
    highlights = params[:highlights]
    if highlights.nil?
      flash[:notice] = 'Please select highlights!'
      redirect_back(fallback_location: 'pages#home')
    else
      highlights.map!(&:to_i).sort!
      highlight = Highlight.find(highlights[0].to_i)
      title = highlight.source.title
      author = highlight.source.author.name
      file_name = title.gsub(' ', '_')
      File.open("#{directory_name}/#{file_name}.md", "wb+") do |file|
        file << "# #{title}\n\n"
        file << "## #{author}\n\n\n\n"
        highlights.each do |id|
          h = Highlight.find(id)
          file << "#{h.content}\n\npage: #{h.page}\n\n"
          file << "note: #{h.my_note}\n\n\n\n" # do smtng here
        end
      end
      flash[:notice] = 'Yay! Highlights were succsesfully exported!'  # notice works!:)
      redirect_to source_path(highlight.source_id)
    end
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
      elsif params[:select_a] == '4' # highlights
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
