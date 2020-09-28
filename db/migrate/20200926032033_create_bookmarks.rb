class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.references :user, null: false, foreign_key: true, null: false
      t.references :tweet, null: false, foreign_key: true, null: false
      t.references :trip, null: false, foreign_key: true, null: false
      

      t.timestamps
    end
  end
end