Twitter Search
===============

This is a simple example on how to use twitter search API to retrieve tweets.

First you need to create an application at [twitter's dev site](https://apps.twitter.com/)

Then get the generated **API Key** and **API Secret** and make then available in your `ENV` as
`ENV['twitter_config_key']` and `ENV['twitter_config_secret']`

One way to do this is set them inside your .rvmrc file, if you use rvm:
`export twitter_config_key=xxxxxxxxxxxx`
`export twitter_config_secret=xxxxxxxxxxxxxxxxxxxx`

Now, start rails server and enjoy! :)