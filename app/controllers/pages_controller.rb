class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user
      flashcards = current_user.flashcards.first(4)
      @book_covers = []
      flashcards.each do |f|
        @book_covers << f.source
      end
      @book_covers
    end
  end
end
