require "towers"

describe "towers" do 


subject(:tower) {Towers.new([:S,:S,:S,:M,:M,:L,:L],[],[])}
let(:moves) {tower.moves}
let(:comp_tower) {[[],[], [:S,:S,:S,:M,:M,:L,:L]]}

    

    describe "#moves" do
        it "should move the rings from first stack to the last stack" do
            expect(moves).to eq(comp_tower)
        end
    end
    
    describe "#won?" do 
        it "return true if game is won" do 
            expect(tower.won?).to eq(true)
        end
    end
end
