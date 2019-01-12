# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]


def match?(combo)
  combo.all? do |number|
    position_taken?(board, number)
  end
end

def won?(board)

  WIN_COMBINATIONS.each |combo| do
      if match? == true
        return combo
  end
  return nil
end