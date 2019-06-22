# HQTriviaRB

A ruby library for HQ Trivia.

## What is this for?

I mean, why not.

## Usage

Put this near the top of your ruby whatever:

```ruby
require 'hqtrivia'

HQ = HQTrivia.new("[your HQ api key]")
```

Don't have a key? We have a method for that!

```ruby
require 'hqtrivia'

HQ = HQTrivia::GenerateKey.new(country_code: "+[code]", phone_number: "[number]", mode: :sms)
```

Now, when you need to run a method, run HQ.method.

Example for getting the authed user.

```ruby
HQ.auth_user.username
# => "Chewsterchew"
```

## Documentation

Stuck? Know Ruby? Check out the [documentation](https://rubydocs.chew.pro/docs/hqtrivia).

## But Ruby sucks

***NO U***
