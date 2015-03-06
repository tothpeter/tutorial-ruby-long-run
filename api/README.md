# Dainty

Dainty is an API for storing bookmarks.

## Run

- `bundle exec cli list`

## Methods

### List bookmarks

    GET /bookmarks

### Create bookmark

    POST /bookmarks

#### Parameters:

This method takes a `bookmark` hash with the following attributes:

- `title` - The bookmark's title (**required**);
- `url` - The bookmark's URL (**required**).