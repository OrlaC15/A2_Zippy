require 'test/unit'
require_relative 'die_test.rb'
require_relative 'grid_test.rb'
require_relative 'kangaroo_test.rb'
require_relative 'point_test.rb'

class AllTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_fail

    fail('Not implemented')
  end
end