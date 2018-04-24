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
  WIN_COMBINATIONS.each do |combo|
    combo.each do |i|
      if board[i]
  # review items at the index to see if they are all the same 
end
