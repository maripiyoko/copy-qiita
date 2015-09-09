class Item < ActiveRecord::Base
  belongs_to :user
  has_many :stocks
  has_many :stocking_users, through: :stocks, source: :user

  validate :title, presence: true
  validate :contents, presence: true

  def stocked?
    if self.user.stocks.find_by_item_id(self.id)
      true
    end
  end

  def mine?(user)
    return false unless user
    self.user.id == user.id
  end
end
