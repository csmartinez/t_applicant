class AddToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :career, :string
    add_column :users, :goals, :string
    add_column :users, :resume, :string
  end
end
