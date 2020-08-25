def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts " ----------- "
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts " ----------- "
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def valid_move?(board, index)
  input_to_index(index) > 8 || input_to_index(index) < 0 ? false : true
  def position_taken?(board, index)
    board[input_to_index(index)] != "" || board[index] != " " ? false : true
  end
  position_taken(board, index)
end
