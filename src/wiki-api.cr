require "json"
require "http/client"
require "./wiki-api/**"

module Wiki
  VERSION = "0.1.0"

  @@proto_url  = "https"
  @@base_url   = "en.wikipedia.org"

  Wiki::PDF.new(@@proto_url, @@base_url, "Rust_(programming_language)")
end