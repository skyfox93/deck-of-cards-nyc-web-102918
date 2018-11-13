require_relative('./card.rb')
require 'pry'
class Deck
  attr_reader :cards
  def initialize
    suites= ["Hearts", "Clubs", "Diamonds", "Spades"]
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @cards = suites.map{|suite|
      ranks.map{|rank|Card.new(suite,rank)}}.flatten
  end

  def choose_card
    cards.delete(cards.sample)
  end

end
