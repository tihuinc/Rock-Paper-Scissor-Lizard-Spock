require 'rubygems'

class Item
  class << self
    attr_accessor :better_than
  end

  def self.beats(opponent)
    @better_than ||= Array.new
    @better_than << opponent
  end

  def beats?(other)
    self.class.better_than.include?(other)
  end

  def to_s
    self.class.name.downcase
  end

  def to_sym
    self.to_s.to_sym
  end
end

class Lizard < Item
  beats :spock
  beats :paper
end

class Paper < Item
  beats :rock
  beats :spock
end

class Rock < Item
  beats :scissors
  beats :lizard
end

class Scissors < Item
  beats :paper
  beats :lizard
end

class Spock < Item
  beats :rock
  beats :scissors
end
