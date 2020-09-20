class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :price, null: false
      t.string :discount, null: false
      #t.references :user,null: false, foreign_key: true
      t.integer :age_id, null: false
      t.integer :area_id, null: false
      t.integer :day_id, null: false
      t.integer :crowd_id, null: false
      t.integer :agency_id, null: false
      t.string  :title, null: false
      t.text  :text, null: false
      t.text  :corona_measure, null: false
      t.text  :traffic, null: false
      t.string  :fare, null: false



      t.timestamps
    end
  end
end
