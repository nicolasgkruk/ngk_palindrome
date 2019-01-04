require "ngk_palindrome/version"

class String

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters in the string.
  def letters

  end

  private

    # Returns content for palindrome testing.
    def processed_content
      #self.scan(/[a-z]/i).join.downcase -> original version provided by Michael Hartl in Learn Enough Tutorial.
      self.gsub(/\W/, '').downcase
    end
end