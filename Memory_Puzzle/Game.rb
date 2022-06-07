class Game

  def initialize
  
  end

  def get_position
    puts "choose two numbers between 0 and 9"
    pos = gets.chomp
    pos.split.map {|num| num.to_i}
    pos
  end

  # at the beggining ofg the game we show all card face_up for 3 sec
  # we would have two boards one face up => populated board, one face down => original baord
  #then all card are face down

  #we reveal the first card from the populated board
  # we get another input same as before
  #we reveal the second one
  # if they match we replace both :X from the on the original board the position with :O
  # user input can't be in a postion :O - raise error
  #game goes on until all ele of original baord are :O
  #


end