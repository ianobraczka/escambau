class Bid < ApplicationRecord
  belongs_to :requesting_user, :class_name => 'User'
  belongs_to :requested_user, :class_name => 'User'

  has_and_belongs_to_many :products

  def requested_products
  	self.products.where(user_id: self.requested_user.id)
  end

  def requesting_products
  	self.products.where(user_id: self.requesting_user.id)
  end
end
