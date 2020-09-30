class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :tweets
         has_one_attached :image
        #  has_many :tweets, dependent: :destroy
        #  has_many :trips, dependent: :destroy
         has_many :bookmarks, dependent: :destroy
        #  has_many :bookmark_tweets, through: :bookmarks, source: :tweet
        #  has_many :bookmark_trips, through: :bookmarks, source: :trip
        has_many :follower, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy # フォロー取得
        has_many :followed, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy # フォロワー取得
        has_many :following_user, through: :follower, source: :followed # 自分がフォローしている人
        has_many :follower_user, through: :followed, source: :follower # 自分をフォローしている人

        has_many :comments  # commentsテーブルとのアソシエーション
        has_many :trip_comments  # trip_commentsテーブルとのアソシエーション
        # ユーザーをフォローする、後ほどcontrollerで使用します。
  def follow(user_id)
    follower.create(followed_id: user_id)
  end

  # ユーザーのフォローを外す、後ほどcontrollerで使用します。
  def unfollow(user_id)
    follower.find_by(followed_id: user_id).destroy
  end

  # フォローしていればtrueを返す、後ほどviewで使用します。
  def following?(user)
    following_user.include?(user)
  end




        
         validates :nickname,:email,:password,:password_confirmation,:firstname, :familyname, :firstname_kana, :familyname_kana, :date,presence: true

         with_options presence: true do
          validates :firstname, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "is invalid. Input full-width characters."}
          validates :familyname, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "is invalid. Input full-width characters."}
          validates :password, format: { with: /\A[a-zA-Z0-9]+\z/, message: "is invalid. Input full-width characters."}
          validates :password_confirmation, format: { with: /\A[a-zA-Z0-9]+\z/, message: "is invalid. Input full-width characters."}
          validates :firstname_kana, format: { with: /\A[ァ-ヶー－]+\z/, message: "is invalid. Input full-width characters."}
          validates :familyname_kana, format: { with: /\A[ァ-ヶー－]+\z/, message: "is invalid. Input full-width characters."}
        end
end
