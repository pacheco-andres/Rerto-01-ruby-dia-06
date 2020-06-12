require 'pry'  #debuger
require 'matrix'#estoy requiriendo la libreria para crear matrices
load 'cells.rb' #estoy importando o mandando a llamar el archivo donde se encuantra cell

class Board
  def build
    @board = Matrix.build(10) { rand(0..1) }#Array.new(10) { Array.new(10, rand(0..1)) }
  end

  def play
    (0..9).each do |row|
      (0..9).each do |column|
        cell = @board[row][column]
        a = Cell.new
        a.alive(cell)
        neighbors(row, column) # aQUI NO ESTOY INFRESANDO CON a.neighbors por que esta declarado dentro de la classe y no es ṕarte del objeto cell 
      end
    end
  end

  def neighbors(row, column) # A esta funcion le estoy pasando parametros de las sigueoiestes lineas de abajo 
    coordinate_one = @board[row-1][column-1] # con esto le estamos pasansdo os parametros a a la funcion 
    coordinate_two = @board[row-1][column]
    coordinate_three = @board[row-1][colum+1]
    coordinate_four = @board[row][column+1]
    coordinate_five = @board[row+1][column+1]
    coordinate_six = @board[row+1][column]
    coordinate_seven = @board[row+1][column-1]
    coordinate_eight = @board[row][column-1]
  end
end

