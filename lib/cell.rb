class Cell

	attr_accessor :content

  def initialize
    @hit = false
    @content = Water.new
  end

  def shoot
    content.hit
    @hit = true
  end

  def hit?
    @hit
  end

end