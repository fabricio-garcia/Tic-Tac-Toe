require_relative '../lib/classes.rb'

describe Board do
    @board = Board.new
    it "checks valid user input" do
        @game_board = [" "," "," "," "," "," "," "," "," "," "," "]
        expect(@board.invalid_move).to eql(true)
    end
end
