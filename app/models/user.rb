class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets
  has_many :likes, dependent: :destroy
  has_many :like_tweets, through: :likes, source: :tweet
  has_many :comments
  mount_uploader :image, ImageUploader
  mount_uploader :avatar, ImageUploader
end
