class ImagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def create
    highlight = Highlight.find(params[:highlight_id])
    # image = Image.find(params[:highlight_id])
    # if !image
    Image.create(id: params[:highlight_id], highlight: highlight, content: params[:content])
    # end
  end

  def share
    # generate png
    require "base64"
    image = Image.find(params[:id])
    plain = Base64.decode64(image.content)
    directory_name = "public/my_images"
    Dir.mkdir(directory_name) unless File.exists?(directory_name)
    file_path = "#{directory_name}/image_to_remember.png"
    File.open(file_path, "wb+") do |file|
      file.write(plain)
    end

    require "open-uri"
    image_1 = URI.open("https://www.readtoremember.xyz/my_images/image_to_remember.png")
    image.img.attach(io: image_1, filename: "#{image.highlight_id}", content_type: 'image/png')
    image.save!
  end

  def image
    @image = Image.find(params[:id])
  end
end
