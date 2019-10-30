#!/usr/bin/env ruby
require '../lib/classes.rb'

WIN = [[0, 1, 2], [3, 4, 5], [6, 7, 8], 
       [0, 3, 6], [1, 4, 7], [2, 5, 8], 
       [0, 4, 8], [2, 4, 6]] 

$count = 0
class Tic

  def initialize
    @board = Board.new
    @player = Player.new
  end
 
  def run
    puts "\nWelcome to tic tac toe in Ruby\n"
    while $count < 9
      @player.switch
      puts "\nPlayer #{@player.player}, pick a number between 1-9: \n\n"
      @board.add_to_board(
        @player.num_choice(@board.game_board), 
        @player.player
      )
      puts
      @board.display_board
      @board.count_board(@player.player)
      if @board.has_winner
        puts "\nGAME OVER!\n\nWinner player #{@player.player}!\n\n"
        break
      end
      $count += 1
    end
    if $count >= 9
      puts "\nGame is a draw\n\n"
    end
  end
end

tic = Tic.new
tic.run


