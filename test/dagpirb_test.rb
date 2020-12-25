require "test_helper"

class DagpiTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Dagpi::VERSION
  end

  def test_get_data_func_exceptions
    req = ::Dagpi::HTTPClient.new("reallybadtoken")
    assert_raises ::Dagpi::HTTPClient::APIError req.get_data("wtp")
  end
end
