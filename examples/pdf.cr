require "../src/wiki-api"

# Example of the PDF class being used

protocol = "https"

#Get reponse
response = Wiki::PDF.new(protocol, "Crystal_(programming_language)")

# Download the PDF (in current directory)
File.write("somefile.pdf", response.body)