require 'array'
    describe "my_uniq" do

        subject(:array) { [1, 1 , 2, 3, 4 ,4] }
        let(:unique_array) {[1,2,3,4]}
        it "calls my_uniq" do
            expect(my_uniq(array)).to eq(unique_array)
        end
    end

describe "Array" do
        describe "#two_sum" do
        subject(:array) { [-1, 0, 2, -2, 1] }
        let(:two_sum) {[[0, 4], [2, 3]]}
        
        it "Should not return itself" do
            array.two_sum #line of code 
            expect(array.two_sum).to_not eq(array)
        end

        it "should return zero_sum pairs" do 
            expect(array.two_sum).to eq(two_sum)
        end
    end
end

describe "my_transpose" do 
    subject(:array) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
    ]}
    let(:transposed_array) {[
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
    ]}

    it "should not mutate original array" do 
        expect(array.object_id).to_not eq(transposed_array.object_id)
    end
    
    it "should transpose the array" do 
        expect(my_transpose(array)).to eq(transposed_array)
    end

end

describe "stock_picker" do
    subject(:array) { [0, 1, 2, 4, 5, 3]}
    let(:good_days) { [0, 4]}
    
    it "returns buy/sell days in correct order" do
         expect(stock_picker(array)).to eq(stock_picker(array).sort)
    end

    it "should return correct buy/sell days" do
        expect(stock_picker(array)).to eq(good_days)
    end

end