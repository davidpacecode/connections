class Grouping < ApplicationRecord
  belongs_to :puzzle

  # validates :common_thread, :word_1, :word_2, :word_3, :word_4, presence: true

  enum :color, {yellow: 0, green: 1, blue: 2, purple: 3}
end
