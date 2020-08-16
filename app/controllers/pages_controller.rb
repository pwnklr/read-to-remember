class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user
      @book_covers = current_user.sources.sample(4)
    end
  end
end
