require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies

    class FiveHundredPx < OmniAuth::Strategies::OAuth
      
      option :name, '500px'
      
      option :client_options, {
        :access_token_path => "/v1/oauth/access_token",
        :authorize_path => "/v1/oauth/authorize",
        :request_token_path => "/v1/oauth/request_token",
        :site => "https://api.500px.com"
      }
      
      uid { 
        user_info['id']
      }
      
      info do 
        {
          :username => user_info['username'],
          :fullname => user_info['fullname']
        }
      end
      
      extra do
        {
          :raw_info => raw_info
        }
      end

      # Return info gathered from the flickr.people.getInfo API call 
     
      def raw_info
        @raw_info ||= MultiJson.load(access_token.get('/v1/users.json').body)
      rescue ::Errno::ETIMEDOUT
        raise ::Timeout::Error
      end

      # Provide the "Person" portion of the raw_info
      
      def user_info
        @user_info ||= raw_info.nil? ? {} : raw_info["user"]
      end
      
      def request_phase
        options[:authorize_params] = {:perms => options[:scope]} if options[:scope]
        super
      end
    end
  end
end