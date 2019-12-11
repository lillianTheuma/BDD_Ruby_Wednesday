require('rspec')
require('palindrome')

describe('String#find_and_replace') do
  it('should return true if given a palindrome') do
    palindrome = Palindrome.new()
    expect(palindrome.palindrome?("tacocat")).to(eq(true))
  end
  it('should return false if given a non-palindrome') do
    palindrome = Palindrome.new()
    expect(palindrome.palindrome?("tacocar")).to(eq(false))
  end
  it('should work with integers') do
    palindrome = Palindrome.new()
    expect(palindrome.palindrome?(55555)).to(eq(true))
  end
  it('should work with a string of words') do
    palindrome = Palindrome.new()
    expect(palindrome.palindrome?("racecar tacocat racecar")).to(eq(true))
  end
end
