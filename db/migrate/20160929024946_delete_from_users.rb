class DeleteFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :resume
  end
end
