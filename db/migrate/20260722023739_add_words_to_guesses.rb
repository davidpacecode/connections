class AddWordsToGuesses < ActiveRecord::Migration[8.1]
  def change
    add_column :guesses, :words, :json
  end
end
