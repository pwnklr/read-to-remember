class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user
      if current_user.flashcards.present?
        covers = current_user.flashcards.map { |f| f.source }
        books = covers.uniq!
        @book_covers = books.length >= 4 ? books.first(4) : covers.first(4)
      end
    end
  end
end
