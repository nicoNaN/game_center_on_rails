class ConnectFour
  attr_reader :board

  def initialize(board = nil)
    @board = board || blank_board
  end

  def blank_board
    Array.new(7) { Array.new(6) }
  end

  def make_move(column)
    row = 6
    until @board[row][column] == nil
      row -= 1
    end
    @board[row][column] = 'R'
  end
end
