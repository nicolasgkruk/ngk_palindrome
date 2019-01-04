require "test_helper"

class MhartlPalindromeTest < Minitest::Test

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaCeCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "racecar.".palindrome?
  end

  def test_palindrome_with_palindromic_phrase
    assert "A man, a plan, a canal—Panama!"
  end
end