class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_many_attached :images
  
  belongs_to_active_hash :area
  belongs_to_active_hash :crowd
  belongs_to_active_hash :day
  

  validates :area_id, numericality: { other_than: 1 }
  validates :images, :local, :title, :price,:hotel_text,presence: true
  
  #動画投稿機能
  mount_uploader :video, VideoUploader

end
