
class Card

  attr_reader :face_value

  def initialize(face_value)
    @face_value = rand(1..8)
    @face_up = Card.face_value
    @face_down = true
  end

  def hide
    self.face_down
  end

  def reveal(pos)
    #takes the position from the user input
    # and reveals the face_value of the card *** the card is face_down
   pos = 
  end
  

end