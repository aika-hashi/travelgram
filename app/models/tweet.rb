class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_one_attached :image
  
  belongs_to_active_hash :area
  belongs_to_active_hash :crowd
  belongs_to_active_hash :day
  

  validates :area_id, numericality: { other_than: 1 }
  validates :image,:local, :title, :price,:discount,:hotel_text,presence: true
  
end
