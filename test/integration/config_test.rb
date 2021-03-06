# encoding: utf-8

require 'test/unit'
require 'test_helper'
require 'payson_api'

class ConfigTest < Test::Unit::TestCase
  include TestHelper

  def test_ensure_expected_config
    assert_equal CONFIG[:api_user_id], PaysonAPI.config.api_user_id
    assert_equal CONFIG[:api_password], PaysonAPI.config.api_password
    assert PaysonAPI.test?
  end
end
