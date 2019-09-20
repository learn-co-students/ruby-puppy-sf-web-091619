class Dog
    @@all = []
    attr_reader :name
    
    def initialize(name)
        @name = name 
        save 
    end
    
    def self.all
        @@all
    end
    
    def self.print_all 
        @@all.each do |name|
            puts name.name
        end   #need to transform <Dog:0x00007fa7118391a8 @name="Pluto"> to "Pluto"
    end
    
    def save
        @@all << self
    end
    
    def self.clear_all
        @@all.clear
    end

end