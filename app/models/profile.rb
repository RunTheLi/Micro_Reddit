class Profile < ApplicationRecord
  belongs_to :user

  validates :age, numericality: { only_integer: true }, allow_nil: true
end
