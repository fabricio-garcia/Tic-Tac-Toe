require_relative '../lib/classes'

describe Board do

	before(:example) do
		@board = Board.new
		@player = Player.new
	end

	describe '#initialize' do
		it "checks it board is created" do
			expect(@board.game_board).to match_array([" "," "," "," "," "," "," "," "," "," "," "])
		end
	end

	context 'when initialized helper array' do
		it 'helper array is empty' do
			expect(@board.board_num).to match_array([])
		end
	end

	describe 'Player' do
		it 'when @choice initialize' do
			expect(@player.choice).to be(nil)
		end
		it 'when @player initialize' do
			expect(@player.player).to eq('X')
		end
	end

end
