class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :price, null: false
      t.string :discount, null: false
      #t.references :user,null: false, foreign_key: true
      t.integer :area_id, null: false
      t.integer :day_id, null: false
      t.integer :crowd_id, null: false
      t.integer :agency_id, null: false
      t.string  :title1, null: false
      t.string  :title2, null: false
      t.text  :hotel_text, null: false
      t.text  :spot_text, null: false
      t.text  :corona_measure1, null: false
      t.text  :corona_measure2, null: false
      t.text  :traffic, null: false
      t.string  :fare, null: false
      t.string  :local1, null: false
      t.string  :local2, null: false
      t.references :user         , foreign_key: true   

      t.timestamps
    end
  end
end
