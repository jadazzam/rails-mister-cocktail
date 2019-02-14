class RemoveIngredientFromDoses < ActiveRecord::Migration[5.2]
  def change
    remove_reference :ingredients, :dose, index: true
  end
end

