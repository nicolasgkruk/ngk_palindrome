require "ngk_palindrome/version"

module NgkPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.scan(/[A-Za-z0-9]/).join.downcase
    end
end

class String
  include NgkPalindrome
end

class Integer
  include NgkPalindrome
end