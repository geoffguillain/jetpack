# Embed Block Variations

This folder doesn't contain a block but rather block variations of Gutenberg's Embed block (`core/embed`).

Specifically, it adds back the Facebook and Instagram variations that were removed from Gutenberg v9.0 because of a change to Facebook's oEmbed API. From October 24th, 2020, an access token will be required when accessing that API [instagram-api].

In Jetpack and WordPress.com, we'll continue to provide these embeds to our users. To that end, we'll proxy requests to that API through a WordPress.com endpoint that adds a token. This ensures that shortcodes continue to work.

For the Embed block variations to work, we additionally need to re-register them. This is done by the files in this directory.

[instagram-api] https://developers.facebook.com/docs/instagram/oembed/
