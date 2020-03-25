class Tweet < ApplicationRecord
  belongs_to :user
  validates :description, length: { maximum: 240 }
end
