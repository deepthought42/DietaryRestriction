class Ingredient < ActiveRecord::Base
  attr_accessible :name, :allergy_ids
  has_and_belongs_to_many :allergies, :join_table => :allergies_ingredients
  has_and_belongs_to_many :products, :join_table => :ingredients_products
  accepts_nested_attributes_for :products, :reject_if => lambda { |a| a[:name].blank? }
  accepts_nested_attributes_for :allergies, :reject_if => lambda { |a| a[:name].blank? }
  
  #validation rules
  validates_uniqueness_of :name
  
  def self.search(search)
    if search
      find(:all, :conditions => ['lower(name) LIKE ?', "%#{search.downcase}%"])
    else
      find(:all)
    end
  end
end
