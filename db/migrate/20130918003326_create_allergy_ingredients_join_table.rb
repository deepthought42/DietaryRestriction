class CreateAllergyIngredientsJoinTable < ActiveRecord::Migration
  def up
	create_table :allergies_ingredients, :id => false do |t|
		  t.belongs_to :allergy
		  t.belongs_to :ingredient
	end
  end

  def down
  end
end
