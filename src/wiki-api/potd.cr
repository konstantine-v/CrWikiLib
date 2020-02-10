class Wiki::POTD
  @@path_url   = "Template:POTD_protected"

  def self.new(proto : String, date : String)
    params = {
      "format"        => ["json"],
      "action"        => ["query"],
      "formatversion" => ["2"],
      "prop"          => ["images"],
      "titles"        => ["#{@@path_url}/#{date}"],
    }
    req_params = HTTP::Params.new(params)
    response = HTTP::Client.get("#{proto}://#{Wiki::API_URL}?#{req_params}")
    raise Exceptions::Generic.new("Something went wrong") unless response.success?
    return response.body
  end

  def self.html(proto : String, date : String)
    response = HTTP::Client.get("#{proto}://#{Wiki::HTML_URL}/#{@@path_url}/#{date}")
    raise Exceptions::Generic.new("Something went wrong") unless response.success?
    return response.body
  end

end