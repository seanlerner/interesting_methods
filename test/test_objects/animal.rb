class Animal

  @@all = []

  attr_reader :type, :sound

  def initialize(type, sound)
    @type  = type
    @sound = sound
    @@all << self
  end

  def speak
    puts @sound
  end

  def speak_loudly
    puts @sound.upcase
  end

  def self.all
    @@all
  end

  def self.report
    puts "#{'Type'.rjust(15)} #{'Sound'.rjust(15)}"
    puts "#{'----'.rjust(15)} #{'-----'.rjust(15)}"
    all.each do |animal|
      puts "#{animal.type.rjust(15)} #{animal.sound.rjust(15)}"
    end
  end

  def b
  end

  def a
  end

  def c
  end

  def self.y
  end

  def self.z
  end

  def self.x
  end

end
