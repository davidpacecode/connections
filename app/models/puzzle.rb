class Puzzle < ApplicationRecord

  has_rich_text :hint

  has_many :groupings, dependent: :destroy

  validates :published_on, presence: true
  validates :puzzle_number, uniqueness: true
  validates :name, :submitted_by, presence: true

  after_create :create_groupings

  def randomized_words
    words = []
    self.groupings.each do |grouping|
      4.times do |i|
        words << "grouping.word_#{i+1}"
      end
    end
  end

  private

    def create_groupings
      Grouping.colors.keys.each do |color|
        grouping = self.groupings.create!
        grouping.color = color
        grouping.save
      end
    end
end
