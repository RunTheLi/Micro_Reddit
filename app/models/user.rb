class User < ApplicationRecord
  has_one :profile, dependent: :destroy

  has_many :pins, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :username, :email, presence: true
end
