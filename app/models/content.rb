class Content < ApplicationRecord
	has_attachment  :avatar, accept: [:jpg, :png, :gif]
	belongs_to :page_part, optional: true
end
