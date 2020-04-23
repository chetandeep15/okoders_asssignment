class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :questions
  has_many :answers
  has_many :user_topic
  has_many :topics, through: :user_topic
  has_many :relationships
  has_many :followers, class_name: 'Relationship', foreign_key: :following_id
  has_many :following, class_name: 'Relationship', foreign_key: :follower_id
end
