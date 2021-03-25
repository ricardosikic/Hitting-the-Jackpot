def test_jackpot(elements)
  
  if elements.length == 0
    return
  end

  numberOfTrue = 0

  elements.each_with_index do |item, ix|
    if item == elements[ix + 1]
      numberOfTrue = numberOfTrue + 1
    end
  end

  if numberOfTrue == elements.length - 1
    return true
  end
  
  return false
end

puts test_jackpot(['SS', 'SS', 'SS', 'xS'])


=begin 
test_jackpot(["@", "@", "@", "@"]) ➞ true
test_jackpot(["abc", "abc", "abc", "abc"]) ➞ true
test_jackpot(["SS", "SS", "SS", "SS"]) ➞ true
test_jackpot(["&&", "&", "&&&", "&&&&"]) ➞ false
test_jackpot(["SS", "SS", "SS", "Ss"]) ➞ false 
=end