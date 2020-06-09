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

	def tie?
		return (@board.full? && self.winner)
	end

	def winner
		[:top, :middle, :bottom].each do |i|
			if @board.token_at(i, :left) == @board.token_at(i, :middle) && @board.token_at(i, :middle) == @board.token_at(i, :right)
				return @board.token_at(i, :left)
			end
		end

		return false
	end


end
