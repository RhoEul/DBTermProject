class List < ApplicationRecord
  has_many :choices
  has_many :comments
  has_and_belongs_to_many :users
end
