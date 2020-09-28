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
