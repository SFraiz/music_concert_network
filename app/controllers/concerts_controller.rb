class ConcertsController < ApplicationController
	def index
		@concerts = Concert.all
		render 'concerts'
	end
	
	def new
		@concert = Concert.new
		render 'new'
	end
	
	def create
		@concert = Concert.new(
			artist: params[:concert][:artist],
			venue: params[:concert][:venue],
			city: params[:concert][:city],
			date: params[:concert][:date],
			price: params[:concert][:price],
			description: params[:concert][:description])
		if @concert.save
			redirect_to concerts_path
		else
			render 'new'
		end 
	end

	def show
		@concert = Concert.find_by(id: params[:id])
		unless @concert
			render 'show'
		end
	end
end