require_relative 'players'
require_relative 'questions'

class Game

  # attr_accessor :player1, :player2

  def initialize #(player1, player2)
    # @player1 = player1
    # @player2 = player2
    # @turn = 1
    # @player_now = ''
  end

  # def get_name
  #   puts "What is your name?"
  #   @name = gets.chomp
  #   print "Hey #{name}! Let's get started!\n"
  # end

  # def player_turn
  #   @player_now = @player2 if @turn.even
  #   @player_now = @player1 if @turn.odd

  # end

  # def game_question
  #   @rand_num1 = rand(1..20).to_i
  #   @rand_num2 = rand(1..20).to_i
  #   puts "#{@player_now.name}: What is #{@rand_num1} plus #{@rand_num2}?"
  #   @user_answer = gets.chomp.to_i
  #   @real_answer = @rand_num1 + @rand_num2
  # end

  # def check_answer
  #   if @user_answer == @real_answer
  #     puts "You got it right!"

  #   else
  #     puts "nope, wrong answer, booooo"
  #     player1.lives = player1.lives - 1 if @player_now.name == player1.name
  #     player2.lives = player2.lives - 1 if @player_now.name == player2.name

  #   end
  # end

  def player_turn(player, question)
    # question = Question.new
    puts "#{player.name}, #{question.question_text}"
    answer = gets.chomp.to_i
    if (!question.correct_answer?(answer))
      player.lose_life
    end
    player
  end

  def create_player(number)
    print "What is the name of player ##{number}? "
    player_name = gets.chomp
    Player.new(player_name)
  end

  def game_start
    player1 = create_player(1)
    player2 = create_player(2)
    # turn = Turn.new
    while player1.alive? && player2.alive? do
      player_turn(player1, Question.new)
      player_turn(player2, Question.new)
      # game_question
      # check_answer
    end
    puts "Game over"
    puts "Player #{player1.name} has #{player1.lives} lives left"
    puts "Player #{player2.name} has #{player2.lives} lives left"
  end
end


# player1 = Player.new("player 1")
# player2 = Player.new("player 2")
# player1.get_name
# player2.get_name
new_game = Game.new#(player1, player2)
new_game.game_start

# new_game = Game.new(player1, player2)







# class Questions
