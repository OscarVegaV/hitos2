class Tweet < ApplicationRecord
  has_many :retweets, class_name: "Tweet", foreign_key: "retweet_id"
  belongs_to :retweet, class_name: "Tweet", optional: true
  has_many :likes, dependent: :destroy


end
