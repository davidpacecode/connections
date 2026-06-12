class CreateGuesses < ActiveRecord::Migration[8.1]
  def change
    create_table :guesses do |t|
      t.references :game, null: false, foreign_key: true
      t.string :word_1
      t.string :word_2
      t.string :word_3
      t.string :word_4
      t.references :grouping, foreign_key: true

      t.timestamps
    end
  end
end
