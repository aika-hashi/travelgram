require 'test_helper'

class BookmarkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  validates :user_id, uniqueness: { scope: :tweet_id }
  validates :user_id, uniqueness: { scope: :trip_id }
end
