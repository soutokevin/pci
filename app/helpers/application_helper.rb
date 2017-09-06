module ApplicationHelper

	def footer
		@footer = Page.find_by(name: 'footer')
	end

	def footer_part
		@footer = Page.find_by(name: 'footer')
		@footer.page_parts[0]
	end

	def page_part(page, name)
		page.page_parts.each do |page_part|
			if page_part.name == name
				return page_part
			end 
		end
	end

	def redirect_page(name)
		pages = { 'Home Page' => 1, 'Client' => 2, 'Student' => 3,
							'Legal' => 4, 'Engineering' => 5, 'Management' => 6 }
		pages[name]
	end

	def page_clients?(page)
		page.name == 'client' unless page.nil? 	
	end

	def page_student?(page)
		page.name == 'student' unless page.nil?
	end

	def page_legal?(page)
		page.name == 'legal' unless page.nil?
	end

	def page_management?(page)
		page.name == 'management' unless page.nil?
	end

	def page_engineering?(page)
		page.name == 'engineering' unless page.nil?
	end
end
