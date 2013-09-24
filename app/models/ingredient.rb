class Ingredient < ActiveRecord::Base
  attr_accessible :name, :allergy_ids
  has_and_belongs_to_many :allergies, :join_table => :allergies_ingredients
  has_and_belongs_to_many :products, :join_table => :ingredients_products
  accepts_nested_attributes_for :products, :reject_if => lambda { |a| a[:name].blank? }
  accepts_nested_attributes_for :allergies, :reject_if => lambda { |a| a[:name].blank? }
end
