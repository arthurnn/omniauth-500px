OmniAuth 500px
==============

This gem contains the 500px strategy for OmniAuth.

For more information about the 500px api: http://developers.500px.com/

How To Use It
-------------

If you are using rails, you need to add the gem to your `Gemfile`:

    gem 'omniauth-500px'

You can pull them in directly from github e.g.:

    gem "omniauth-500px", :git => "git://github.com/arthurnn/omniauth-500px.git"

Once these are in, you need to add the following to your `config/initializers/omniauth.rb`:

    Rails.application.config.middleware.use OmniAuth::Builder do
    	provider :fiveHundredPx, 'consumer_key', 'consumer_secret'
    end

User the name of the class as provider(fiveHundredPx), however to authorize, you should use the provider name which is '500px'.


You will obviously have to put in your key and secret, which you can get from http://developer.500px.com/oauth_clients/new


After you have the gem running and the configuration is done, you can get to the follow url to log the user in:

	http://localhost:3000/auth/500px

Now just follow the README at: https://github.com/intridea/omniauth

Questions
---------

For any question, fell free to send me a tweet [@arthurnn](http://twitter.com/arthurnn)

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/arthurnn/omniauth-500px/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

