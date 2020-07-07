class User < ApplicationRecord

	has_many :products

	has_many :requested_bids, :class_name => 'Bid', :foreign_key => 'requested_user_id'
  	has_many :requesting_bids, :class_name => 'Bid', :foreign_key => 'requesting_user_id'

  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
 	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    # Uploaders
 	mount_uploader :image, ImageUploader

 	def name
 		return self.email.split("@").first
 	end
end
