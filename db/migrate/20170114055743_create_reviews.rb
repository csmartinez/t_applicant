class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :tcomp
      t.integer :ncomp
      t.text :torg
      t.integer :norg
      t.text :tstrength
      t.integer :nstrength
      t.text :tread
      t.integer :nread
      t.text :impression
      t.text :answer
      t.text :summary
      t.integer :user_id
      t.integer :admin_id
      t.text :feedback
      t.string :url, null: false
      t.timestamps
    end
  end
end
