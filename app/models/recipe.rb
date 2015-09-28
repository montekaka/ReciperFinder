class Recipe
	include HTTParty	
	key_value = ENV['FOOD2FORK_KEY']
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'	
	base_uri "http://#{hostport}/api"
	default_params fields: "title,image_url,social_rank", q: "search"
	format :json		
	
	def self.for term		
		get("", query: {query: term})["recipes"]	
		#key_value = ENV['FOOD2FORK_KEY']
		#get("http://food2fork.com/api/search?key=#{key_value}&q=#{term}")["recipes"]
	end
end