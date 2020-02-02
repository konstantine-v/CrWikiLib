require "../src/wiki-api"

# Example of the PDF class being used

#Get reponse
response = Wiki::PDF.new(@@proto_url, "Rust_(programming_language)")

File.write("somefile.pdf", response.body)