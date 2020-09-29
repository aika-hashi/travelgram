class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_many_attached :images
  has_many :bookmarks, dependent: :destroy
  has_many :comments  # commentsテーブルとのアソシエーション

  def bookmark_by?(user)
    bookmarks.where(user_id: user.id).exists?
  end

  
  
  belongs_to_active_hash :area
  belongs_to_active_hash :crowd
  belongs_to_active_hash :day
  belongs_to_active_hash :week

  validates :area_id, numericality: { other_than: 1 }
  validates :images, :local, :title, :price,:hotel_text,presence: true
  validates :video, :presence => true

  #動画投稿機能
  mount_uploader :video, VideoUploader

end
