# Wiki::Library
Currently WIP, but this project works. 

I wrapper for the Wikipedia and Wikimedia API to get commonly used things.

It's constantly changing, but my main focus is working on new features and making QOL changes to make it nicer to work with.

## Installation
Install as a shard by including in your `shards.yml`
```crystal
dependencies:
  crwikilib:
    github: MaterialFuture/CrWikiLib
```
After adding remember to run `shards` to install and be able to use in your project

## Usage
Refer to `examples/` directory for examples of use.

To get the page in a data format use the following:
```Ruby
puts Wiki::Page.new("https", "Crystal_(programming_language)", "json")
```

To get the page as a PDF for download use the following:
```Ruby
puts Wiki::Page.pdf("https", "Crystal_(programming_language)")
```

To get the Post of the Day use the following code: (date in ISO format)
```Ruby
Wiki::POTD.new("HTTPS", potd_date, "json")
```

I made it so you can specify protocol, that way if you're not required HTTP or HTTPS, you dsecide.

## Development
TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/materialfuture/wiki-api/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [MaterialFuture](https://github.com/materialfuture) - creator and maintainer


## Notes

- Example PDF Request to Rest API: <https://en.wikipedia.org/api/rest_v1/page/pdf/Rust_(programming_language)>

#### TODO

- Look into adding Admiral Shard
- Look into adding functionality for reading txt file for bulk downloads for PDFs
- Breakout URLs for so they're more reusable