class RemoveWordColumnsFromGuesses < ActiveRecord::Migration[8.1]
  def change
    remove_column :guesses, :word_1, :string
    remove_column :guesses, :word_2, :string
    remove_column :guesses, :word_3, :string
    remove_column :guesses, :word_4, :string
  end
end
