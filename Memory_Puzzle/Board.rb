class Board

  def initialize(n)
    @board = Array.new(n) {Array.new(n, :X)}
    @size = n * n
  end
  #we have the original board
   
  def [](position)
    row, col = position
    @board[row][col]
  end

  def []=(position, value)
    row, col = position
    @board[row][col] = value
    
  end
 def populate
    i = 0
    numbers = [1, 2, 3, 4, 5, 6, 7, 8]
    
    while i < 8
    fill_row = rand(0...@board.length)
    fill_col = rand(0...@board.length)
    pos = [ fill_row, fill_col]

     
        self[pos] = numbers[i]
     
        i += 1
      
    end
    @board
  end

  #we have the populated board

 

  # def populate
  #   i = 0
  #   numbers = [1, 2, 3, 4, 5, 6, 7, 8, 1, 2, 3, 4, 5, 6, 7, 8] #include [5, 8]
  #   numbers.each do |num|
  #     until @board.flatten.all? {|ele| ele != :X}
  #       fill_row = rand(0...@board.length)
  #       fill_col = rand(0...@board.length)
  #       self[fill_row][fill_col] = num
        
  #     end
  #   end
  #   @board
  # end

  
     
  # def rand_pos
  #   fill_row = rand(0...@board.length)
  #   fill_col = rand(0...@board.length)
  #   pos = [ fill_row, fill_col]
  #   rand_pos = self[pos] 
  #   return rand_pos
  
  # end
    



  def face_count
    count = Hash.new(0)
    @board.flatten.each do |spot|
      count[spot] += 1
    end
    count
  end
    




end 

board_1 = Board.new(4)

p board_1
board_1.populate


    # if @board.each do |row|
    #   row.each do |spot| 
    #     if spot == :X Board.
          
    #   rand(0...half_grid).each do |row|
    #     rand(0...half_grid).each do |col|
    #       if !number.include?@board[row][col] 
    #       @board[row][col] = numbers[i]
            
    # while i < @size / 2
    #   fill_row = rand(0...@board.length)
    #   fill_col = rand(0...@board.length)
    #   @board.each do |row|
    #     row.each do |spot|
    #       @board[fill_row][fill_col] = numbers[i] if spot == :X
          
    #       end
    #     end
    #   i += 1  
    # end

    # def populate
  #   numbers = [1, 2, 3, 4, 5, 6, 7, 8, 1, 2, 3, 4, 5, 6, 7, 8]
  #   @board.flatten.each do |spot|
  #     if spot == :X
  #       spot = numbers.sample

  #     end
  #   end
  #   @board
  # end


    # def populate
  #   i = 0
  #   numbers = [1, 2, 3, 4, 5, 6, 7, 8]
    
  #   while i < 8
  #   fill_row = rand(0...@board.length)
  #   fill_col = rand(0...@board.length)
  #   pos = [ fill_row, fill_col]

  #     if self[pos] == :X && !@board.flatten.include?(numbers[i])
  #       self[pos] = numbers[i]
  #     end
  #       i += 1
      
  #   end
     
    
  # p @board
  # end

  # def populate
  #   half_grid = @size / 2
  #   i = 0
  #   numbers = [1, 2, 3, 4, 5, 6, 7, 8]
  #   while i < 8
  #     rand(0...@board.length).each do |row|
  #       rand(0...@board.length).each |col| @board[row][col] = numbers[i]}
  #     end
  #     i += 1
  #   end
  #   p @board
  
  # end 


     
  
