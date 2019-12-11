class Palindrome
  def palindrome?(string)
    string = string.to_s
    if (string == string.reverse)
      return true
    end
    return false
  end
end
