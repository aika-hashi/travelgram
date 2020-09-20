class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_one_attached :image
  
  
  belongs_to_active_hash :age
  belongs_to_active_hash :agency
  belongs_to_active_hash :area1
  belongs_to_active_hash :area2
  belongs_to_active_hash :crowd1
  belongs_to_active_hash :crowd2
  belongs_to_active_hash :day

  validates :title1,:title2, :local1,:local2, presence: true
  validates :area_id,:day_id,numericality: { other_than: 1 } 

  
end
