require_relative 'LinkedList'

class TermReader
  def initialize
    @terms = LinkedList.new
  end

  def read_terms(n)
    if n < 1 || n >  10
      puts "Número inválido de termos"
      return
    end

    n.times do |i|
      puts "Escreva o #{i + 1}° termo:"
      term = gets.to_i

      if term >= 10 && term <= 9999
        @terms.append(term)
      else
        puts "Termo(s) inválido"
        return
      end
    end
    @terms
  end
end
