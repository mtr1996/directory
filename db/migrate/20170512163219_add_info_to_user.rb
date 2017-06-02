class AddInfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :login, :text, null: false, limit: 64
    add_column :users, :name, :text, null: false, limit: 64
    add_column :users, :sex, :text, null: false, limit: 64
    add_column :users, :country, :text, null: false, limit: 64
    add_column :users, :city, :text, null: false, limit: 64
    add_column :users, :rating, :integer, :default => nil
    add_index :users, [:login], unique: true
  end
end
