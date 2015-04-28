# http://mashable.com/stories.json

# Include rest-client library
# Include JSON library
# Setup rest-client call
# Parse the results from the Reddit API
# Build an array of hashes
# Every hash is going to represent a single story

require 'rest-client'
require 'json'

#######################
# METHODS
#######################
#category



def get_from_digg
  raw_response = RestClient.get('http://digg.com/api/news/popular.json')
  response = JSON.load(raw_response)

  response["data"]["feed"].map  do |story|
    story_hash = {
      title: story["content"]["title_alt"],
      author: story["content"]["author"],
      score: story["digg_score"]

    }
  end


end

#display data 
def display_stories(stories)

  stories.each do |story|
    puts "Title: #{story[:title]}"
    puts "Author: #{story[:author]}"
    puts "Score: #{story[:score]}"


    puts ""
  end
end
 
puts "!!! Welcome to the NEWS API Aggregator !!!"
stories = get_from_digg
display_stories(stories)


