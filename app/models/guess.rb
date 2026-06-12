class Guess < ApplicationRecord
  belongs_to :game
  belongs_to :grouping, optional: true
end
