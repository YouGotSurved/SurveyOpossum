class AddEmailToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :email, :string
    add_column :authors, :phone, :string
    add_column :authors, :address, :string
    add_column :authors, :city, :string
    add_column :authors, :state, :string
    add_column :authors, :gender, :string
    add_column :authors, :age, :string
    add_column :authors, :image, :string
  end
end
