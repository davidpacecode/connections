class Puzzle < ApplicationRecord

  has_rich_text :hint

  has_many :groupings, dependent: :destroy

  validates :published_on, presence: true
  validates :puzzle_number, uniqueness: true
  validates :name, :submitted_by, presence: true

  after_create :create_groupings

  private

    def create_groupings
      4.times do
        self.groupings.create!
      end
    end
end
