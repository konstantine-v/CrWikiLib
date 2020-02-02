class Wiki::POTD
  @@path_url   = "wiki/Template:POTD_protected"

  def self.new(proto : String, date : String)
    response = HTTP::Client.get("#{proto}://#{Wiki::URL}/#{@@path_url}/#{date}")

    # Raise Exception if something goes wrong, duh 
    raise Exceptions::Generic.new("Something went wrong") unless response.success?

    return response.body
  end

  def self.html(proto : String, url : String, date : String)
    response = HTTP::Client.get("#{proto}://#{url}/#{@@path_url}/#{date}")
    raise Exceptions::Generic.new("Something went wrong") unless response.success?
    return response.body
  end

  # Todo: Get image just the image by using JSON or parse the HTML using XML::parse
end