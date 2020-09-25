require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester 
  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

  
  def initialize(site)
    @site = site 
  end 
  
  def get_response_body 
    uri = URI.parse(@site)
    response = Net::HTTP.get_response(uri)

    response.body 
  end 
  
  def parse_json
 
    programs = JSON.parse(get_response_body)
    programs
    
  end 
end 

