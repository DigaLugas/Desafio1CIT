require_relative 'LinkedList'

class ExpressionCalculator
  def initialize
    @total = 0
  end

  def calculate(expression)
    expression.each do |term|
      base = term / 10
      expoente = term % 10
      @total += base ** expoente
    end

    if @total >= 10**9
      puts "Expressão inválida, resultado não é menor que 10^9"
      return 0
    end

    return @total
  end
end
