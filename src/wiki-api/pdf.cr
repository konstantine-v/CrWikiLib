class Wiki::PDF
  @@path_url   = "api/rest_v1/page/pdf"

  def self.new(proto : String, url : String, query : String)
    # GET the pdf by building the URL
    response = HTTP::Client.get("#{proto}://#{url}/#{@@path_url}/#{query}")

    # Raise Exception if something goes wrong, duh 
    raise Exceptions::Generic.new("Something went wrong") unless response.success?

    # Download file
    File.write("#{query}.pdf", response.body)
  end
end