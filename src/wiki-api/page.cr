class Wiki::Page
  @@api_url   = "w/api.php"

  def self.new(proto : String, query : String)
    params = {
      "format"    => ["json"],
      "action"    => ["query"],
      "prop"      => ["extracts"],
      "redirects" => ["1"],
      "titles"    => [query],
    }
    req_params = HTTP::Params.new(params)
    response = HTTP::Client.get("#{proto}://#{Wiki::URL}/#{@@api_url}?#{req_params}")
    raise Exceptions::Generic.new("Something went wrong") unless response.success?
    return response.body
  end

  def self.pdf(proto : String, title : String)
    path_url   = "api/rest_v1/page/pdf"
    pdf_url    = "#{proto}://#{Wiki::URL}/#{path_url}/#{title}"

    response = HTTP::Client.get(pdf_url)
    raise Exceptions::Generic.new("Something went wrong") unless response.success?
    return response
  end

end