class AddOmniauthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string, default: '', null: false
    add_column :users, :uid, :string, default: '', null: false
    add_column :users, :nickname, :string
    add_column :users, :image, :string

    add_index :users, :provider
    add_index :users, :uid
  end
end
