require_relative '../lib/board'

describe 'A Tic Tac Toe board' do

  it 'needs locations' do
    expect(Board.new).to respond_to(:locations)
  end

  it 'starts off empty' do
  	board = Board.new
  	expect(board).to be_empty
  end

  it 'empty means empty' do
  	board = Board.new
  	board.place(:x, :top, :left)
  	expect(board).to_not be_empty
  end

  it 'can place a token' do
  	board = Board.new
  	board.place(:x, :top, :left)
  	expect(board.token_at(:top, :left)).to eq(:x)
  end
end
