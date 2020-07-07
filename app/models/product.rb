class Product < ApplicationRecord
  
  	extend FriendlyId
  	friendly_id :name, use: :slugged
  	
	# Relations
  	belongs_to :user
  	belongs_to :category
  	has_and_belongs_to_many :bids

  	# Uploaders
 	mount_uploader :image, ImageUploader

 	def is_available?
 		return self.available
 	end

end
