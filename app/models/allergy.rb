class Allergy < ActiveRecord::Base
  attr_accessible :name, :ingredients_attributes, :ingredient_ids
  has_and_belongs_to_many :ingredients, :join_table => :allergies_ingredients
  accepts_nested_attributes_for :ingredients, :reject_if => lambda { |a| a[:name].blank? }
  
  def self.search(search)
    if search
      find(:all, :conditions => ['lower(name) LIKE ?', "%#{search.downcase}%"])
    else
      find(:all)
    end
  end
end
