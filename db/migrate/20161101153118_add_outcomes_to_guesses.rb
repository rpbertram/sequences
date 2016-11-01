class AddOutcomesToGuesses < ActiveRecord::Migration
  def change
    add_column :guesses, :outcome, :string
  end
end
