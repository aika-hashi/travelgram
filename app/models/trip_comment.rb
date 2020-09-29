class TripComment < ApplicationRecord
  belongs_to :trip  # tripsテーブルとのアソシエーション
  belongs_to :user  # usersテーブルとのアソシエーション
end
