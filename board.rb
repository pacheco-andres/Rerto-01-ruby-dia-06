require 'pry'  #debuger
require 'matrix'#estoy requiriendo la libreria para crear matrices
load 'cell.rb' #estoy importando o mandando a llamar el archivo donde se encuantra cell

class Board
  def build
    @board = Matrix.build(10) { rand(0..1) }#Aquí se esta contruyendo el board del juago 
  end

  def play
    (0..9).each do |row|
      (0..9).each do |column|
        cell = @board[row, column]
        a = Cell.new
        a.alive(cell)
        neighbors(row, column) #Aquí no estoy ingresando a.neighbors por que esta declarado dentro de la classe y no es ṕarte del objeto cell 
        print "############################################################\n" 
        print "\n"
        print @board
        print "\n" 
      end
    end
  end

  def neighbors(row, column) # A esta funcion le estoy pasando parametros de las sigueoiestes lineas de abajo 
    #binding.pry # este es para realizar el debuger 
    cells = [] # Lo que estoy haciendo aquí es obtener o esperar los valores que seran incertados por el array de abajo 
    #binding.pry
    cells << @board[row-1, column-1] #con esto estoy incertando valores de la celula a el array vacio 
    cells << @board[row-1, column]
    cells << @board[row-1, column+1]
    cells << @board[row, column+1]
    cells << @board[row+1, column+1]
    cells << @board[row+1, column]
    cells << @board[row+1, column-1]
    cells << @board[row, column-1]
    alive_cells = cells.count(1)

    case alive_cells
    when alive_cells <= 1
      @board[row, column] = 0
    when alive_cells == 2 || alive_cells == 3
      @board[row, column] = 1
    when alive_cells >= 4
      @board[row, column] = 0
    end
  end
end
