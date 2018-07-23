
require 'nokogiri'
require 'open-uri'
URL = 'https://www.codewars.com/users/leaderboard'

User = Struct.new(:name, :clan, :honor)


class Leaderboard
  class Position
    include Enumerable

    def initialize
      @results_array = []
    end

    def <<(val)
      @results_array << val
    end

    def [](index)
      @results_array[index-1]
    end

    def size
      @results_array.length
    end
  end
  attr_reader :position
  
  def initialize
    @position = Position.new
  end
end

def solution
  doc = Nokogiri::HTML(open(URL))
  leaderboard = Leaderboard.new
  doc.css('.leaderboard.pan tr')[1..-1].each do |row|
    name = row.attribute('data-username').value
    clan = row.css('td[3]').text
    honor = row.css('td[4]').text.to_i
    leaderboard.position << User.new(name, clan, honor)
  end
  leaderboard
end

