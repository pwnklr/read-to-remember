require 'kindle_highlights'

class Kindle < ApplicationRecord
  belongs_to :user

  def get_kindle_data
    kindle_data = KindleHighlights::Client.new(email_address: self.email, password: self.password)
    kindle_data.books.each do |b|
      author = Author.create!(name: b.author)
      book = Source.new(title: b.title, category: 'book')
      book.author = author
      book.user = user
      # book.photo => scrape book cover
      book.save!
      kindle_data.highlights_for(b.asin).each do |h|
        highlight = Highlight.new(content: h.text, page: h.location)
        highlight.user = user
        highlight.source = book
        highlight.save!
      end
    end
  end
end
