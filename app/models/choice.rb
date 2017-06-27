class Choice < ApplicationRecord
  belongs_to :list
  has_many :result
end
