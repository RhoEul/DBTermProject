class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :results
  has_many :transactions
  has_many :comments
  has_many :lists
  has_and_belongs_to_many :choices
  has_one :sign_out
end
