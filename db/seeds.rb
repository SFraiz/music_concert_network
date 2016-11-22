0.upto(10).each do |i|
	Concert.create(artist: "Ironhack #{i}", venue: "Razzmatazz #{i}", city: "Barcelona #{i}", date: Date.today+i.day, price: "#{i}".to_i, description: "description #{i}")
	
end