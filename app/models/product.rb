class Product < ActiveRecord::Base
  attr_accessible :brand, :description, :name, :ingredient_ids, :ingredients_attributes
  has_and_belongs_to_many :ingredients, :join_table => :ingredients_products
  accepts_nested_attributes_for :ingredients, :reject_if => lambda { |a| a[:name].blank? }
  
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
