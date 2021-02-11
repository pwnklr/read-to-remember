class SourcesController < ApplicationController
  before_action :set_source, only: [:show, :export_book, :export_all]
  after_action :destroy_file, only: [:export_many, :export_all]

  def show
  end

  def export_book
  end

  def export_many
    highlights = params[:highlights]
    if highlights.nil?
      flash[:notice] = 'Please select highlights!'
      redirect_back(fallback_location: 'pages#home')
    else
      highlights.map!(&:to_i)
                .sort!
                .map!{|h| Highlight.find(h)}

      source = highlights.first.source
      generate_file(source, highlights)
    end
  end

  def export_all
    generate_file(@source, @source.highlights.order(page: :asc))
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

  def generate_file(source, highlights)
    directory_name = "public/data"
    Dir.mkdir(directory_name) unless File.exists?(directory_name)
    file_path = "#{directory_name}/read_to_remember_#{current_user.id}.md"
    File.open(file_path, "wb+") do |file|
      file << "# #{source.title}\n\n"
      file << "## #{source.author.name}\n\n"
      highlights.each do |h|
        file << "#{h.content}\n\npage: #{h.page}\n\n"
        if !h.my_note.nil? && h.my_note.match(/[^\s]/)
          file << "note: #{h.my_note.strip}\n\n\n\n"
        else
          file << "\n\n"
        end
      end
    end
    sleep(2)
    flash[:notice] = 'Yay! Highlights were succsesfully exported!'
    redirect_to source_path(source)
  end

  def destroy_file
    sleep(3)
    directory_name = "public/data"
    Dir.mkdir(directory_name) unless File.exists?(directory_name)
    file_path = "#{directory_name}/read_to_remember_#{current_user.id}.md"
    File.open(file_path, "w+") do |file|
      file << ""
    end
  end
end
