require "json"
require "http/client"
require "./wiki-api/**"
require "./wiki-api/exceptions/**"

module Wiki
  VERSION = "0.1.2"
  LANG    = "en"
  URL     = "#{Wiki::LANG}.wikipedia.org"
  API_URL = "#{Wiki::URL}/w/api.php"
  HTML_URL = "#{Wiki::URL}/wiki"

end




