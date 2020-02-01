require "json"
require "http/client"
require "./wiki-api/**"

module Wiki
  VERSION = "0.1.0"

  Wiki::Resource.find("Rust_(programming_language)")
end