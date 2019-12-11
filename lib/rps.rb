class RPS
  def wins(hand0, hand1)
    valid = ['rock','paper','scissors']
    options = {"rock"=>"scissors", "paper"=>"rock", "scissors"=>"paper"}
    hand0 = hand0.downcase
    hand1 = hand1.downcase

    if (valid.include?(hand0) && valid.include?(hand1))
      if (hand0 == hand1)
        return 2
      elsif (options.fetch(hand0) == hand1)
        return 0
      elsif (options.fetch(hand1) == hand0)
        return 1
      end
    end
    return false
  end
end
