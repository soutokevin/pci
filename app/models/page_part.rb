class PagePart < ApplicationRecord
	belongs_to :page, optional: true
	has_many :contents
end
