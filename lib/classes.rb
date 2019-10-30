# frozen_string_literal: true

Learn(more) || give(us(feedback))
class Board
  attr_accessor :game_board, :board_num
  def initialize
    @game_board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @board_num = []
  end

  def invalid_move(choice)
    if choice =~ /[1-9]/ && @game_board[choice - 1].empty?
      true
    else
      false
    end
  end

  def display_board
    puts " #{@game_board[0]} | #{@game_board[1]} | #{@game_board[2]} "
    puts '-----------'
    puts " #{@game_board[3]} | #{@game_board[4]} | #{@game_board[5]} "
    puts '-----------'
    puts " #{@game_board[6]} | #{@game_board[7]} | #{@game_board[8]} "
  end

  def add_to_board(choice, player)
    @game_board[choice - 1] = player
  end

  def count_board(player)
    @board_num = []
    @game_board.length.times do |i|
      @board_num << (i if @game_board[i] == player)
    end
  end

  def position_check(num)
    if @board[num].any?
      true
    else
      false
    end
  end

  def has_winner
    WIN.any? { |line| (line - @board_num) == [] }
  end
end

class Player
  attr_accessor :choice, :player
  def initialize
    @choice = nil
    @player = 'X'
  end

  def switch
    @player = if $count.even?
                'X'
              else
                'O'
              end
  end

  def invalid_move(game_board)
    if @choice.between?(1, 9) && game_board[@choice - 1] == ' '
      true
    else
      false
    end
  end

  def num_choice(game_board)
    @choice = gets.to_i
    until invalid_move(game_board)
      puts "\nERROR: Number already in use or not a valid number between 1-9: "
      puts "Please try again: \n\n"
      @choice = gets.to_i
    end
    @choice
  end
end
