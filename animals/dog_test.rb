require 'minitest/autorun'
require_relative 'dog'

class DogTest < Minitest::Test

    def setup
        @luna = Dog.new("Luna")
    end

    def test_initialization_with_one_argument
        assert_equal "Luna", @luna.name
    end
end