module ApplicationHelper

	def active_tab_class(*paths)  
    	active = false  
    	paths.each { |path| active ||= current_page?(path) }  
    	active ? 'active' : ''  
	end  
	
	def user_products
		if current_user
			return current_user.products
		else
			return nil
		end
	end

end
