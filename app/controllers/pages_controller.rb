class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user
      if current_user.flashcards.present?
        flashcards = current_user.flashcards
        @book_covers = []
        covers = []
        books = []
        flashcards.each do |f|
          covers << f.source
        end
        books = covers.uniq!
        if books.length >= 4
          @book_covers = books.first(4)
        else
          @book_covers = covers.first(4)
        end
      end
    end
  end
end
