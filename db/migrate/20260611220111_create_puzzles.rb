class CreatePuzzles < ActiveRecord::Migration[8.1]
  def change
    create_table :puzzles do |t|
      t.integer :puzzle_number
      t.date :published_on
      t.string :name
      t.string :submitted_by

      t.timestamps
    end
  end
end
