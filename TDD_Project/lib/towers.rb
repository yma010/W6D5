require "colorize"
class Towers
    attr_accessor :t1, :t2, :t3
    
    def initialize(t1,t2,t3)
        @t1, @t2, @t3 = t1,t2,t3
    end

    def won? 
        return false if (t1.length == 0 && t2.length == 0 )
        true 

    end

    def moves
        #disc_hash = {:S => 1, :M => 2, :L => 3}
        until !won? 
            #first    
            if t1[0] == :S && t2.length == 0
                t3.unshift(t1.shift)
            #second     
            elsif t1[0] == :M 
                t2.unshift(t1.shift) 
            #third
            elsif t3[0] == :S
                t2.unshift(t3.shift) 
            #fourth
            elsif t1[0] == :L
                t3.unshift(t1.shift)
            #fifth   
            elsif t2[0] == :S
                t1.unshift(t2.shift)
            #sixth
            elsif t2[0] == :M
                t3.unshift(t2.shift)
            #seventh    
            else 
                t3.unshift(t1.shift)
            end
           self.render  
        end
        
        puts 'Game Complete' 
        [t1,t2,t3]
    end

    def render
        puts "_______________________" 
        print_arr = [t1,t2,t3]
        p print_arr 
        #puts t2
        #puts t3
        puts "_______________________" 
        sleep(0.5)
    end
       
end
# t1 = [:S,:S,:S,:M,:M,:L,:L]
# t2 = []
# t3 = []
# tower = Towers.new(t1,t2,t3)
# tower.moves
