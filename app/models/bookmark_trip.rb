class BookmarkTrip < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  validates :user_id, uniqueness: { scope: :trip_id } # 追加
end
