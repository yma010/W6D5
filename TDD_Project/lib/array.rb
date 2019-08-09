def my_uniq(array)
    empty_arr = []
    hash1 = Hash.new(0)
    array.each  { |ele| hash1[ele] +=1}
    hash1.keys {|k| k }
end

class Array

    def two_sum
        arr = []
        (0..self.length - 1 ).each do |idx1|
            (idx1+ 1..self.length - 1 ).each do |idx2|
                if self[idx1] + self[idx2] == 0 
                    arr << [idx1, idx2]
                end
            end
        end
        arr 
    end
    
end

def my_transpose(array)
    new_arr = Array.new(array.length){[]}  
    array.each_with_index do |row, idx|
        row.each_with_index do |col, jdx|
            new_arr[jdx] << array[idx][jdx]
        end
    end
    new_arr
end

def stock_picker(array)
    new_hash = Hash.new {|p_diff, index| new_hash[p_diff] = index}

    array.each_with_index do |price_1, day_1|
        array.each_with_index do |price_2, day_2|
            if day_2 > day_1
                new_hash[price_2 - price_1] = [day_1, day_2]
            end
        end
    end

    max = 0

    new_hash.each do |p_diff , index_pair|
        if index_pair == index_pair.sort
            if p_diff > max
                max = p_diff
            end
        end
    end
    new_hash[max]
end

