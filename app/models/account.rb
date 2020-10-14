class Account < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :bugs, dependent: :destroy
  accepts_nested_attributes_for :users

  validates_presence_of :name
end
