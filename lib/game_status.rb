WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
  ]
  
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  board.each do |board_combo|
  if board.include?(board_combo)
    return board_combo
  else 
    false
  end
end

def full?(board)
  board.all? do |board_combo|
  if position_taken(board, board_combo)
    true
  else 
    false
  end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    true
  else
    false
  end
end

def over?(board)
  if won?(board) == true || draw?(board) == true || full?(board) == true
    true
  else
    false
  end
end

def winner(board)
  #board.each do |board_combo|
end

end

end