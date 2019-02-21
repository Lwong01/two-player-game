class Question
  def initialize
    @num1 = rand(1..20).to_i
    @num2 = rand(1..20).to_i
  end

  def question_text
    "What is #{@num1} plus #{@num2}?"
  end

  def correct_answer?(some_answer)
    some_answer == @num1 + @num2
  end
end
