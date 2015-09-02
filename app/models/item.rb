class Item < ActiveRecord::Base
  belongs_to :user
  has_many :stocks
  has_many :stocking_users, through: :stocks, source: :user

  validate :title, presence: true
  validate :contents, presence: true
end
