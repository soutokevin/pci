class Content < ApplicationRecord
	belongs_to :page_part, optional: true
end
