class Wiki::Resource
  @@proto_url  = "https"
  @@base_url   = "en.wikipedia.org"
  @@path_url   = "api/rest_v1/page/pdf"

  def self.find(query : String)
    response = HTTP::Client.get("#{@@proto_url}://#{@@base_url}/#{@@path_url}/#{query}")

    raise Exceptions::Generic.new("Something went wrong") unless response.success?

    from_json(response.body)
  end
end