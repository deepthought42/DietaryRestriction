class CreateIngredientProductsJoinTable < ActiveRecord::Migration
  def up
    create_table :ingredients_products, :id => false do |t|
	  t.belongs_to :ingredient
	  t.belongs_to :product
	end
  end

  def down
  end
end
