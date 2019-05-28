class Product < ApplicationRecord
  
	# Relations
  	belongs_to :user
  	belongs_to :category

  	# Uploaders
 	mount_uploader :image, ImageUploader

 	def is_available?
 		return self.available
 	end

end
