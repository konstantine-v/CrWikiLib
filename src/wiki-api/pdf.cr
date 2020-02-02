# It may be worth putting this inside page and making it a new prop like Wiki::Page.new(x).pdf or something
# If i decide to do that, then it would just be a matter of passing the data from new (JSON) as query.pages.title to .pdf(), however that's done

class Wiki::PDF
  @@path_url   = "api/rest_v1/page/pdf"

  def self.new(proto : String, query : String)
    response = HTTP::Client.get("#{proto}://#{Wiki::URL}/#{@@path_url}/#{query}")
    raise Exceptions::Generic.new("Something went wrong") unless response.success?
    return response
  end
end