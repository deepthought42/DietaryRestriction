class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.String :brand
      t.text :description

      t.timestamps
    end
  end
end
