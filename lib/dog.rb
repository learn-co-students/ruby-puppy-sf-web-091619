require 'pry'
class Dog

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end
    
    def self.all
        @@all
    end
    def self.clear_all
        @@all = []
    end
    
    def self.print_all
        Dog.all.each { |info| puts info.name }
    end
end