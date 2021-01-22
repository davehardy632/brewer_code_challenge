require 'minitest/autorun'
require 'minitest/pride'
require './lib/string_parser'
require 'json'
require 'pry'

class PasswordCheckerTest < Minitest::Test

  def setup
    str_arr = ["abcdef",
     "abbcde",
     "abccde",
     "abcccd",
     "aabcde",
     "abcdee",
     "abcbab"]

    @sp = StringParser.new(str_arr)
  end

  def test_return_string_with_letters_appearing_twice
    assert_equal 21, @sp.contain_letters_appearing_twice
  end

end
