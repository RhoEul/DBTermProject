class Choice < ApplicationRecord
  belongs_to :list
  has_many :result
  has_and_belongs_to_many :users
end
