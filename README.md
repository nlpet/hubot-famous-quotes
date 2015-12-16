# hubot-urban-dictionary
An npm package for Hubot that allows you to get random quotes from [Andruxnet](https://andruxnet-random-famous-quotes.p.mashape.com).

# API used
https://market.mashape.com/andruxnet/random-famous-quotes

## Installation
You need to set up an account with [Mashape](https://www.mashape.com) in order
to use this package. Once you have signed up:

* Add a new application
* Go to the
  [Mashape Urban Dictionary API](https://market.mashape.com/andruxnet/random-famous-quotes)
  to create a X-Mashape-Key for your new application
* Grab your X-Mashape-Key from your curl REQUEST EXAMPLE
* Add your key to your enviornment variables with the name HUBOT_MASHAPE_KEY
* Add hubot-famous-quotes to your dependancies in the package.json file and
  in your exteranl-scripts.json file.
* Run `npm install` to download the package
* Restart you hubot
* Enjoy ;)

## Usage
Use the keyword quotes when addressing your bot.

#### Example:
`hubot quotes`

