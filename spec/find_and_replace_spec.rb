require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do
  it('should replace the same word in a sentence that the user provides into "universe"') do
    expect("I am walking my cat to the cathedral.".find_and_replace("cat", "dog")).to(eq("I am walking my dog to the doghedral."))
  end
  it('should work with multiple substitions directly one after the other') do
    expect("aaaaaa".find_and_replace("a","aa")).to(eq("aaaaaaaaaaaa"))
  end
end
