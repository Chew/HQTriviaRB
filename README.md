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

Don't have a key? We have a class for that!

```ruby
require 'hqtrivia'

e = HQTrivia::GenerateKey.new(country_code: code, phone_number: "[number]", method: "sms/call")
e.verify("code")
HQ = e.hq
```

Now, when you need to run a method, run HQ.method.

Example for getting the authed user.

```ruby
HQ.me.username
# => "Chewsterchew"
```

## Documentation

Stuck? Know Ruby? Check out the [documentation](https://rubydocs.chew.pro/docs/hqtrivia).

Still stuck? That Stucks! hey it! Check out our support channels

### Support Channels

nonexistent. :!

## But Ruby sucks

***NO U***
