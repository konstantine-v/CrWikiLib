require "../src/wiki-api"
proto = "https"
query = "Crystal_(programming_language)" #Parse query and make what the API want's

# Get reponse in JSON
puts Wiki::Page.new("https", "Crystal_(programming_language)", "json")
# Format is based on the formats in https://meta.wikimedia.org/w/api.php, formats available are XML, JSON, PHP, Rawfm, etc.