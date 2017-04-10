#!/usr/bin/env ruby


require_relative "solution.rb"
require "test/unit"

class TestSimpleNumber < Test::Unit::TestCase
  def test_simple
    assert_equal(get_sum(0,1),1)
    assert_equal(get_sum(0,-1),-1)
    assert_equal(get_sum(1,2),3)
    assert_equal(get_sum(5,-1),14)
  end
end
