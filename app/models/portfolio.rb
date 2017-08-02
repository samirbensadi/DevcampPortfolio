class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image 


	def self.angular
		where(subtitle: "Angular")
	end

	def self.rails
		where(subtitle: "Ruby on Rails")
	end
	# an other way to write this up.
	# scope :ruby_on_rails_portfolio_items, -> {where(subtitle: "Ruby on Rails")}

end
