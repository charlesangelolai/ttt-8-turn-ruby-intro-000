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
  if board[index] != "" || board[index] != " "
    false
  else
    true
  end
end

def valid_move?(board, index)
  input = input_to_index(index)
  if board[index] > 8 || board[index] < 0
    false
  else
    position_taken?(board, index)
  end
end
