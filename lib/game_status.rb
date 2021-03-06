# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row 
  [3,4,5], #mid row
  [6,7,8], #bot row
  [0,3,6], #left col 
  [1,4,7], #mid col 
  [2,5,8], #right col 
  [0,4,8], #l>r diag 
  [2,4,6]  #r>l diag 
]

def won?(board)
  won = false
  WIN_COMBINATIONS.each do |combo|
    if (combo.all?{|i| position_taken?(board, i)}) && (board[combo[0]] == board[combo[1]] && board[combo[0]] == board[combo[2]]) 
        won = combo
    end
  end
  won
end


def full?(board)
  board.all?{|space| space == "X" || space == "O"}
end


def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  else
    nil
  end
end
