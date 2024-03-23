require_relative 'ExpressionCalculator'
require_relative 'TermReader'

calculator = ExpressionCalculator.new
term_reader = TermReader.new

puts "Escreva quantos termos deseja escrever:"
n = gets.to_i

terms = term_reader.read_terms(n)
if terms
  result = calculator.calculate(terms)
  puts result
end
