class Game < ApplicationRecord
  belongs_to :user
  belongs_to :puzzle
  has_many :guesses

  enum :status, {in_progress: 0, won: 1, lost: 2 }
end

