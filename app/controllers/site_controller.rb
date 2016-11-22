class SiteController < ApplicationController
	def home
		@concerts = Concert.where(date: Date.today)
	end
end