# spotify-search


This gem wraps the Spotify metadata API ( https://developer.spotify.com/technologies/web-api/ )


## Examples

**Instantiate the client:**
```
client = Spotify::Client.new
```


### Lookups
Lookup resources by their spotify resource URI.


**Instantiate a lookup:**
```
client = Spotify::Client.new
lookup = client.lookup
```

**Lookup an artist:**
```
# Beastie Boys
artist = lookup.artist('03r4iKL2g2442PT9n2UKsx').results

# Various methods
artist.name
artist.href

# Call a detailed lookup - Returns more information
artist = lookup.artist('03r4iKL2g2442PT9n2UKsx', :detailed)

# Various methods (In addition to all basic methods)
artist.albums

# Albums returns an array of Spotify::Resources::Lookup::AlbumBase objects
artist.albums[0].name
```

**Lookup an album:**
```
# The Beatles - Love Me Do 1962
album = lookup.album('5urwYffbwvhKf2lDeyrAQh').results

# Various methods
album.name
album.artist
album.released
album.availability

# Call a detailed lookup - Returns more information
album = lookup.album('5urwYffbwvhKf2lDeyrAQh', :detailed)

# Various methods (In addition to all basic methods)
album.tracks
```

**Lookup a track:**
```
# Let it Roll - Flo Rida
track = lookup.track('72yHcYTFilEkFY1cJigOaE').results

# Various methods
track.name
track.album
track.href
track.external_ids
track.length
track.artists
```

### Searches

**Instantiate a search:**
```
client = Spotify::Client.new
search = client.search
```

**Search for artists:**
```
search.artists('Beastie Boys')
```

**Search for albums:**
```
search.albums('Love Me Do 1962')
```

**Search for tracks:**
```
search.tracks('Let it Roll')
```


