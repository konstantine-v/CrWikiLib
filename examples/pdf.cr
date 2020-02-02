require "../src/wiki-api"

proto = "https"
query = "Crystal_(programming_language)" #Parse query and make what the API want's

# Download the PDF (in current directory)
File.write("#{query}.pdf", Wiki::Page.pdf(proto, query).body)

#Todo: will soon be made to read a list in a txt file