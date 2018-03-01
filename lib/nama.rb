# Nama class
class Nama
  attr_accessor :numbers
  def initialize
    @numbers = (1..100).collect do |n|
      check(n)
    end
  end

  def check(number)
    if (number % 5).zero?
      'Nama'
    elsif (number % 7).zero?
      'Team'
    elsif (number % 35).zero?
      'Nama Team'
    else
      number
    end
  end

  def print_numbers
    @numbers.each do |n|
      print n, ' '
    end
  end
end
