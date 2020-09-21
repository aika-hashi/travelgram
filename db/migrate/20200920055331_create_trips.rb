class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :image        , null: false ,default: ""
      t.string :price, null: false
      t.string :discount, null: false
      #t.references :user,null: false, foreign_key: true
      t.integer :area_id, null: false
      t.integer :day_id, null: false
      t.integer :crowd_id, null: false
      t.string  :title, null: false
      t.text  :spot_text, null: false
      t.text  :corona_measure, null: false
      t.text  :traffic, null: false
      t.string  :fare, null: false
      t.string  :local, null: false
      t.references :user         , foreign_key: true   
      t.references :tweet          , foreign_key: true  
      t.timestamps
    end
  end
end
