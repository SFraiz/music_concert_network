class Concert < ApplicationRecord

	validates :artist, presence: true
	validates :venue, presence: true
	validates :city, presence: true
	validate :mydate_is_date?, on: create
	validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
	validates :description, presence: true 

 private
 def mydate_is_date?
   if !mydate.is_a?(Date)
     errors.add(:date, 'must be a valid date') 
   end
 end
end