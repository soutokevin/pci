class Content < ApplicationRecord
	has_attachment  :avatar, accept: [:jpg, :png, :gif]
	belongs_to :page_part, optional: true

	validates_presence_of :avatar, if: 'allow_photo?'
	validates_presence_of :title, if: 'allow_title?'
	validates_presence_of :body, if: 'allow_text?'

	def allow_photo?
  	self.page_part.allow_photo
	end

	def allow_title?
  	self.page_part.allow_title
	end

	def allow_text?
  	self.page_part.allow_text
	end
end
