# frozen_string_literal: true

require "test_helper"
require "dev_to/resources/user_resource"

class TestDevTo < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::DevTo::VERSION
  end

  def test_it_does_something_useful
    conn = ::Faraday.new(
      url: 'https://dev.to/api',
      headers: {'api-key' => ENV['DEV_TO_API_KEY']}
    ) do |req|
      req.adapter :net_http
    end

    resource = DevTo::UserResource.new(connection: conn)
    p resource.me
  end
end
