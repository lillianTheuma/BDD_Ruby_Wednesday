class String
  def find_and_replace(input1, input2)
    array_self = self.split('')
    array_filter = input1.split('')
    array_replace = input2.reverse.split('')
    progress = 0

    array_self.each_with_index do |letter, index|
      if (letter == array_filter[progress])
        progress = progress + 1
        if (progress >= array_filter.length)
          array_filter.each do |letter| #delete the original word
            array_self.delete_at(index-array_filter.length+1)
          end
          array_replace.each do |letter| #place in the new word
            array_self.insert(index-array_filter.length+1, letter)
          end
        end
      else
        progress = 0
      end
    end
    return array_self.join('')
  end
end
