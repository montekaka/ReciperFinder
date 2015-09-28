class Recipe
	include HTTParty
	key_value = ENV['FOOD2FORK_KEY']
	# hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'	
	# base_uri "http://#{hostport}/api"
	# default_params api_key:key_value,fields: "title,image_url", q: "search"
	format :json		
	
	def self.for term
		key_value = ENV['FOOD2FORK_KEY']
		#get("", query: {query: term})["recipes"]	
		get("http://food2fork.com/api/search?key=#{key_value}&q=#{term}")["recipes"]
	end
end