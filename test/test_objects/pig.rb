class Pig < Animal

  def self.three_little_pigs
    ['Larry', 'Mo', 'Curly']
  end

  def roll_around_in_mud
    3.times do
      puts 'Rolling and getting dirty ...'
    end
    puts 'Oh so dirty!'
  end

end
