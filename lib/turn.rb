def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  int=input.to_i
  return index= int - 1
end

def move(board,index,character="X")
  board[index]=character
  return board
end


def position_taken?(board,index)
  if board[index]==" "||board[index]==""|| board[index]== nil
    return false
  else
    return true
  end
end

def valid_move?(board,index)
  if position_taken?(board,index) == false && index.between?(0,8)
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
<<<<<<< HEAD
  input=gets.strip
  index=input_to_index(input)
=======
  input=gets.string
  input_to_index(input)
>>>>>>> 60d659bf8af53ed9cb659d20b92ab8debbc7919f
  if valid_move?(board,index)
    board[index]= "X"
    display_board(board)
  else
    #until valid_move?(board,index)
      turn(board)
    #end
  end
end
