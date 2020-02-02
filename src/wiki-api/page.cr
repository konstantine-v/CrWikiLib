class Wiki::Page
  @@path_url   = "w/api.php"

  # https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro&explaintext&redirects=1&titles=Stack%20Overflow

  def self.new(proto : String, query : String)
    params = {
      "format"    => ["json"],
      "action"    => ["query"],
      "prop"      => ["extracts"],
      "redirects" => ["1"],
      "titles"    => [query],
    }
    req_params = HTTP::Params.new(params)
    
    response = HTTP::Client.get("#{proto}://#{Wiki::URL}/#{@@path_url}?#{req_params}")
    raise Exceptions::Generic.new("Something went wrong") unless response.success?
    return response.body

    # Note: return query.pages.title or query.pages.extract
  end

end