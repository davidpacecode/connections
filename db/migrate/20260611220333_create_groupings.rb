class CreateGroupings < ActiveRecord::Migration[8.1]
  def change
    create_table :groupings do |t|
      t.references :puzzle, null: false, foreign_key: true
      t.string :common_thread
      t.string :word_1
      t.string :word_2
      t.string :word_3
      t.string :word_4

      t.timestamps
    end
  end
end
