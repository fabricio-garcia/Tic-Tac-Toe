require_relative '../lib/classes.rb'

describe Board do

    before(:each) do
        @board_test = Board.new
    end

   describe "#initialize" do
    it "when board is properly set" do
        expect(@board_test.game_board).to eql([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
    end
   end

   describe "#invalid_move(choice)" do
    it "when user enter a valid number" do
        expect(@board_test.invalid_move(2)).to be(false)
    end
   end

   describe "#invalid_move(choice)" do
    xit "when user enter an invalid number" do
        expect(@board_test.invalid_move(20)).to be(false)
    end
   end

end
