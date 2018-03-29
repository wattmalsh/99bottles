class Bottles
  def verse n
    first_half = "#{n == 0 ? "No more" : n} bottle#{n == 1 ? '' : 's'} of beer on the wall, " +
    "#{n == 0 ? "no more" : n} bottle#{n == 1 ? '' : 's'} of beer.\n"

    if n == 0
      second_half = "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      second_half = "Take #{n == 1 ? 'it' : 'one'} down and pass it around, " +
      "#{n -1 == 0 ? 'no more' : n - 1} bottle#{n - 1 == 1 ? '' : 's'} of beer on the wall.\n"
    end

    first_half + second_half
  end

  def verses hi, lo
    result = ""
    while hi >= lo
      result += verse(hi)
      result += hi != lo ? "\n" : ""
      hi -= 1
    end
    result
  end
  
  def song
    verses 99, 0
  end
end

