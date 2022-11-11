class Solver
  def factorial(num)
    raise Exception, 'Only positive integers' if num.class != Integer || num.negative?

    result = 1
    while num.positive?
      result *= num
      num -= 1
    end
    result
  end

  def reverse(word)
    raise Exception, 'Only strings' if word.class != String

    word.reverse
  end

  def fizzbuzz(num)
    raise Exception, 'Only integers' if num.class != Integer

    div_by3 = num.modulo(3).zero?
    div_by5 = num.modulo(5).zero?
    if div_by3 && div_by5
      'fizzbuzz'
    elsif div_by5
      'buzz'
    elsif div_by3
      'fizz'
    else
      num.to_s
    end
  end
end
