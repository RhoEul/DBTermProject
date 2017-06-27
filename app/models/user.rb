class User < ApplicationRecord
  has_many :results
  has_many :transactions
  has_many :comments
  has_and_belongs_to_many :lists
  has_one :sign_out
end
