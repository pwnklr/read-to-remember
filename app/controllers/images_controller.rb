class ImagesController < ApplicationController
  def create
    highlight = Highlight.find(params[:highlight_id])
    image = Image.find(params[:highlight_id])
    if !image
      @image = Image.create(id: params[:highlight_id], highlight: highlight, content: params[:content])
    end
  end

  def share
    # generate png
    require "base64"
    image = Image.find(params[:id])
    # after_action, trigger share, after share destroy file
    plain = Base64.decode64(image.content)
    directory_name = "public/my_images"
    Dir.mkdir(directory_name) unless File.exists?(directory_name)
    file_path = "#{directory_name}/image_to_remember_#{image.highlight_id}.png"
    File.open(file_path, "wb+") do |file|
      file.write(plain)
    end
  end
end
