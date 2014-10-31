class AddColumnsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :name, :string
    add_column :restaurants, :state, :string
    add_column :restaurants, :description, :text
    add_column :restaurants, :zipcode, :string
    add_column :restaurants, :city, :string
    add_column :restaurants, :phonenumber, :string
    add_column :restaurants, :street, :string
  end
end
