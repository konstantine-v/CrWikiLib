class Wiki::Page
  def self.new(proto : String, query : String)
    params = {
      "format"    => ["json"],
      "action"    => ["query"],
      "prop"      => ["extracts"],
      "redirects" => ["1"],
      "titles"    => [query],
    }
    req_params = HTTP::Params.new(params)
    response = HTTP::Client.get("#{proto}://#{Wiki::API_URL}?#{req_params}")
    raise Exceptions::Generic.new("Something went wrong") unless response.success?
    return response.body
  end

  def self.pdf(proto : String, title : String)
    path_url   = "api/rest_v1/page/pdf"
    pdf_url    = "#{proto}://#{Wiki::API_URL}/#{title}"

    response = HTTP::Client.get(pdf_url)
    raise Exceptions::Generic.new("Something went wrong") unless response.success?
    return response
  end
end