class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post, optional: true   # only used for message board comments
  belongs_to :pin, optional: true    # only used for pin comments

  # For nested comments (message board)
  belongs_to :parent, class_name: "Comment", optional: true
  has_many :replies, class_name: "Comment", foreign_key: "parent_id", dependent: :destroy

  validates :body, presence: true
end
