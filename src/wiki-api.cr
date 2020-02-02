require "json"
require "http/client"
require "./wiki-api/**"
require "./wiki-api/exceptions/**"

module Wiki
  VERSION = "0.1.0"
  URL   = "en.wikipedia.org"

  # Wiki::PDF.new(@@proto_url, @@base_url, "Rust_(programming_language)")

end

# day = Time::Format.new("%F", Time.local)

