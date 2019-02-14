class FixReference < ActiveRecord::Migration[5.2]
  def change
    remove_reference :doses, :ingredient, index: true
    remove_reference :doses, :cocktail, index: true
    add_reference :doses, :ingredient, index: true
    add_reference :doses, :cocktail, index: true
    add_foreign_key :doses, :cocktails
    add_foreign_key :doses, :ingredients
  end
end
