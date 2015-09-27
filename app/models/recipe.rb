class Recipe
	include HTTParty
	#key_value = ENV['FOOD2FORK_KEY']
	#hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'	
	#hostport = 'www.food2fork.com'
	#base_uri "http://#{hostport}/api"
	#default_params fields: "title,image_url", q: "search"
	format :json

	def self.for term
		#get("", query: {query: term})["recipes"]
		get("http://food2fork.com/api/search?key=#{ENV['FOOD2FORK_KEY']}&q=#{term}")["recipes"]
	end
end