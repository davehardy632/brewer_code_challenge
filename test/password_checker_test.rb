require 'minitest/autorun'
require 'minitest/pride'
require './lib/password_checker'
require 'json'
require 'pry'

class PasswordCheckerTest < Minitest::Test

  def setup
    pw_hash = {
       "3-5 f": "ffff",
       "6-20 n": "qlzsnnnndwnlhwnxhvjn",
       "6-7 j": "jjjjjwrj",
       "8-10 g": "gggggggggg",
       "5-6 t": "ttttttft",
       "6-11 h": "khmchszhmzm",
       "4-6 q": "qqbjqqqj",
       "6-8 j": "gtkwwjjj",
       "13-14": "lwgwrwczwwhkww",
       "2-4 p": "vcnptzdppvpdzp",
       "4-6 n": "pmlnzwrnbnxnpmwmhbnz",
       "4-9 w": "wwprdwwwx",
       "13-20 b": "rbbcbbbbbbbbsbbbbbmj",
       "1-3 r": "zwhrnvr",
       "4-6 f": "fmfgfcf",
       "13-15 z": "zxzzzzzzzzvxkplvzzz",
       "12-18 r": "phjqccgmgzmdwxgtrtb",
       "5-19 s": "ssssssssssssssssssss",
       "6-7 d": "pddqmdd",
       "7-9 p": "pwrlpvlhpfpppzp",
       "4-5 m": "mpmmmm",
       "9-10 s": "ssxsssssrj",
       "6-9 p": "lpjrvpppp",
       "6-13 r": "rrrzvtrgrhqxqrvrvwzr",
       "1-3 p": "dpjp",
       "6-7 w": "wkjnmww",
       "1-5 r": "cfqhhr",
       "5-9 m": "wmmlpgmqmmrm",
       "12-13 x": "sxgnwxxkjwrxr",
       "6-8 n": "lnnrnnnnn",
       "10-11 q": "kqqqzqqfqqqqq",
       "12-17 k": "kkkkkkkkkkpkkhgvnjhk",
       "12-13 v": "vvvvvvvvvvvvvv",
       "12-15 h": "hhhhhhhjkhhhhhth",
       "6-7 l": "hmqtlllnllnlmtqnn",
     }.to_json

    @pc = PasswordChecker.new(pw_hash)
  end

  def test_return_valid_password_count
    assert_equal 21, @pc.count_valid
  end

end
