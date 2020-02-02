require "../src/wiki-api"

proto = "https"
query = "Crystal_(programming_language)" #Parse query and make what the API want's

# Example of getting a page

#Get reponse
puts Wiki::Page.new("https", "Crystal_(programming_language)") #Returns JSON of the page you want