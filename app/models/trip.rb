class Trip < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  belongs_to_active_hash :area
  belongs_to_active_hash :crowd
  belongs_to_active_hash :day
  
end
