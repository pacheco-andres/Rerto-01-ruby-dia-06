
load 'board.rb'

class GameOfLife
  def start
    board = Board.new
    board.build
    board.play
  end
end

game = GameOfLife.new
game.start