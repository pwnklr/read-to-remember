class Highlight < ApplicationRecord
  belongs_to :user
  belongs_to :source
  has_one :note, dependent: :destroy
  validates :content, presence: true
  validates :page, presence: true
  acts_as_taggable_on :tags
  acts_as_favoritable
  before_save :set_note
  #before_save :set_tags

   def set_tags
    tags = []
    reg = /^#.+/
    note = self.my_note.split(" ")
    note.each do |w|
      tags << w if w.match(reg)
    end
    tags.uniq!
    tags.join(" ")
    #self.tag_list.add(tags)
  end

  private

  def set_note
    note = self.my_note.split(" ")
    tags = []
    reg = /^#.+/
    note.each do |w|
      if w.match(reg)
        tags << w
        note.delete(w)
      end
    end
    tags.uniq!

    self.my_note = note.join(" ")
    self.tag_list = tags.join(" ")
  end


end
