class Highlight < ApplicationRecord
  belongs_to :user
  belongs_to :source
  has_one :note, dependent: :destroy
  validates :content, presence: true
  validates :page, presence: true
  validates :my_note, length: { in: 1..1000 }
  acts_as_taggable_on :tags
  acts_as_favoritable
  before_save :set_note

  private

  def set_note #wip
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
    self.tag_list.add(tags.join(" "))
  end
end
