class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :address, presence: true
  validates :name, presence: true
end
