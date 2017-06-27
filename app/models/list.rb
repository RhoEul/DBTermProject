class List < ApplicationRecord
  has_many :choices
  has_many :comments
  belongs_to :user
end
