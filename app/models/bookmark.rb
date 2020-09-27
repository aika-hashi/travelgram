class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :tweet
  validates :user_id, uniqueness: { scope: :tweet_id } # 追加
  validates :user_id, uniqueness: { scope: :trip_id } # 追加

end
