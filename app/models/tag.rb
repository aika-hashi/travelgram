class Tag < ApplicationRecord

  has_many :tweet_tag_relations
  has_many :tweets, through: :tweet_tag_relations
  has_many :trip_tag_relations
  has_many :trip, through: :tweet_tag_relations
end
