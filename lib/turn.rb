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

def position_taken?(board, index)
  if board[index] == "" || board[index] == " "
    true
  else
    false
  end
end

def valid_move?(board, index)
  (index > 8 || index < 0) && position_taken?(board, index) ? false : true
end
