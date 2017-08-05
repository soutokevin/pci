module ApplicationHelper
	def services(index)
		services_name = ['management', 'engineering', 'juridical']
		services_name[index]
	end

	def page_part(page, name)
		page.page_parts.each do |page_part|
			if page_part.name == name
				return page_part
			end 
		end
	end

	def redirect_page(name)
		pages = { 'Home Page' => 1, 'Client' => 2, 'Student' => 3 }
		pages[name]
	end

	def page_clients?(page)
		page.name == 'Client'
	end

	def page_student?(page)
		page.name == 'Student'
	end
end
