require 'kindle_highlights'

class KindlesController < ApplicationController
  before_action :set_kindle, only: [:edit, :update, :show]

  def show
  end

  def new
    @kindle = Kindle.new
    @kindle.user = current_user
  end

  def create
    @kindle = Kindle.new(kindle_params)
    @kindle.user = current_user
    @kindle.get_kindle_data
    if @kindle.save
      redirect_to library_sources_path # or?
    else
      render :new
    end
  end

  def edit
  end

  def update
     @kindle.update(kindle_param)
    if @kindle.save
      redirect_to library_sources_path # or where?
    else
      render :edit
    end
  end

  private

  def set_kindle
    @kindle = Kindle.find(params[:id])
  end

  def kindle_params
    params.require(:kindle).permit(:email, :password, :user_id)
  end
end
