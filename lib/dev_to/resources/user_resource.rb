require 'resource_kit'
require 'faraday'

module DevTo
  class UserResource < ResourceKit::Resource
    resources do
      # default_handler(422) { |response| ErrorMapping.extract_single(response.body, :read) }
      # default_handler(:ok, :created) { |response| DropletMapping.extract_single(response.body, :read) }
      default_handler { |response| raise "Unexpected response status #{response.status}... #{response.body}" }

      action :me do
        path '/api/users/me'
        handler(200) { |body| body }
      end
    end
  end
end