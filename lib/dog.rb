require 'pry'


class Dog
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

 
    def save
        @@all << self
    end

    def self.all
         @@all
     end

     def self.clear_all
        @@all.clear
     end

     def self.print_all
        @@all.each do |dog_names|
            puts dog_names.name
        end
    end


     #binding.pry

    # def self.print_all
    #     @@all.each do |name|
    #     puts name
    # end
















end