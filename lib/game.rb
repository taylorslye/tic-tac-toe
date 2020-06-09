require_relative 'board'

class Game
	def initialize(board = Board.new)
		@board = board
	end

	def board
		return @board
	end

	def over?

		return @board.full?
	end


end
