# Should accept a board as an argument and print out the current state of the board for the user.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts " ----------- "
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts " ----------- "
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Should accept a board and an index from the user and return true if the index is within the correct range of 0-8 and is currently unoccupied by an X or O token.
# Hint: While not explicitly required by this lab, you might want to encapsulate the logic to check if a position is occupied in its own method, perhaps #position_taken?
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
  if index > 8 || index < 0
    false
  else
    position_taken?(board, index)
  end
end
