class Item < ActiveRecord::Base
  belongs_to :user

  validate :title, presence: true
  validate :contents, presence: true
end
