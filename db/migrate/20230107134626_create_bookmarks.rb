class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      
      t.integer :user_id, foreign_key: true,   null: false
      t.integer :recipe_id
      t.timestamps
    end
  end
end
