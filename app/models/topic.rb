class Topic < ApplicationRecord

  has_many :users, through: :user_topic
  has_many :questions
end