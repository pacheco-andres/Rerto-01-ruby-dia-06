require 'minitest/autorun'
load 'board.rb'


class BoardTest < Minitest::Test
  def test_board_rows_size 
    board = Board.new.build
  
    assert_equal 10, board.row_count
  end

  def test_board_columns_size 
    board = Board.new.build
  
    assert_equal 10, board.column_count
  end
end


  