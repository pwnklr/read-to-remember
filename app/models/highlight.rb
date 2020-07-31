class Highlight < ApplicationRecord
  belongs_to :user
  belongs_to :source
  has_one :note, dependent: :destroy
  validates :content, presence: true
  validates :page, presence: true
  acts_as_taggable_on :tags
  acts_as_favoritable
  before_save :set_note_and_tags

  private

  def set_note_and_tags #wip - upcase tags?! :/
    note = self.my_note.split(" ")
    tags = []
    my_n = self.my_note.split(" ")
    reg = /^#.+/
    note.each do |w|
      if w.match(reg)
        my_n.delete(w)
        tags << w
      end
    end
    tags.uniq!
    self.h_note = my_n.join(" ")
    self.tag_list = "#{tags.join(", ")}"
  end
end
