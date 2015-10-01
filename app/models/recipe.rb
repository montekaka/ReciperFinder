class Recipe
	include HTTParty	
	key_value = ENV['FOOD2FORK_KEY']
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	base_uri "http://#{hostport}/api"
	default_params key:key_value
	format :json		

	def self.for term			
		get("/search", query: {q: term})["recipes"]	
		#key_value = ENV['FOOD2FORK_KEY']
		#get("http://food2fork.com/api/search?key=#{key_value}&q=#{term}")["recipes"]
	end
end