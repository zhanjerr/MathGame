module MathGame
  class Question

    attr_reader :answer, :instruction

    def initialize
      number_1 = random_num
      number_2 = random_num
      operator = function[rand(0...2)]
      @instruction = "What does #{number_1} #{operator[text]} #{number_2} equal?"
      @answer = number_1.send(operator[symbol], number_2)
    end

    function = [
      {symbol: :+ , text: 'plus'},
      {symbol: :- , text: 'minus'},
      {symbol: :*, text: 'multiply'}
    ]

    def random_num
      rand(1...6)
    end

  end
end