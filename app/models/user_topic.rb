class UserTopic < ApplicationRecord

  belongs_to :topic
  belongs_to :user

  validates_uniqueness_of :topic_id, scope: [:user_id], message: "Already following"
end