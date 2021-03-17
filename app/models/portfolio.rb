class Portfolio < ApplicationRecord

	validates_presence_of :title, :main_image, :body

	def self.angular
		where(subtitle: "Angular")
	end

	scope :ruby_on_rails_items, ->{ where(subtitle: "rails")}

end
