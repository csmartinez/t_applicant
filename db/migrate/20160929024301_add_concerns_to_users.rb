class AddConcernsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :concern, :string
  end
end
