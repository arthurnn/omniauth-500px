OmniAuth 500px
==============

This gem contains the 500px strategy for OmniAuth.

For more information about the 500px api: http://developer.500px.com/

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

For any question, fell free to send me a tweet http://twitter.com/arthurnn

License
-------

Copyright (c) 2011 by Arthur Neves

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/arthurnn/omniauth-500px/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

