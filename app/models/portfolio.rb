class Portfolio < ApplicationRecord
	has_many :technologies
	  include Placeholder

	validates_presence_of :title, :main_image, :body

	def self.angular
		where(subtitle: "Angular")
	end

	scope :ruby_on_rails_items, ->{ where(subtitle: "rails")}

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: "600", width: "400")
	end

end
