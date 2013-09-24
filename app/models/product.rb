class Product < ActiveRecord::Base
  attr_accessible :brand, :description, :name, :ingredient_ids
  has_and_belongs_to_many :ingredients, :join_table => :ingredients_products
  accepts_nested_attributes_for :ingredients, :reject_if => lambda { |a| a[:name].blank? }
end
