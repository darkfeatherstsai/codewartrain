=begin
題目:有一個方形的矩陣arr(一個長度為n的陣列，裡面的元素是長度為n的陣列)
     要將對角線上的元素反轉交換(左上->右下 右上->左下)
想法:最左上角的元素為arr[0][0]
     最右下角的元素為arr[-1][-1]
     最左下角的元素為arr[-1][0]
     最右上角的元素為arr[0][-1]
     將其交換就可以達成任務
修正:1.對角線上的每個元素都要交換，並非只交換四個角的元素
註解:左上到右下這條對角線上的元素
     由左上開始可表示為arr[i][i] i = 0..matrix.size
     由右下開始可表示為arr[-i-1][-i-1] i = 0..matrix.size
     右上到左下這條對角線上的元素
     由左上開始可表示為arr[i][-i-1] i = 0..matrix.size
     由右下開始可表示為arr[-i-1][i] i = 0..matrix.size
=end
def reverse_on_diagonals(matrix)
    i = 0
    (matrix.size / 2).times do
      matrix[i][i] ,matrix[-i-1][-i-1] = matrix[-i-1][-i-1] ,matrix[i][i]
      matrix[i][-i-1] ,matrix[-i-1][i] = matrix[-i-1][i] ,matrix[i][-i-1]
      i += 1
    end
  return matrix
end
