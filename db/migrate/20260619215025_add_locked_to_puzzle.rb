class AddLockedToPuzzle < ActiveRecord::Migration[8.1]
  def change
    add_column :puzzles, :locked, :boolean, default: false, null: false
  end
end
