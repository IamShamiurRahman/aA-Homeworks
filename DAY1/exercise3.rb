class Map
    attr_reader :my_array

    def initialize
        @my_array = []
    end
    def set(key,value)
        pair_index = my_array.index { | pair | pair[0] == key }
        if pair_index
            my_array[pair_index][1] = value
        else
            my_array.push([key,value])
        end
        p my_array
        value
    end
    def get(key)
        my_array.each { |pair| return pair[1] if pair[0] == key }
        nil
    end
    def delete(key)
        value = get(key)
        my_array.reject! { |pair| pair[0] == key }
        value
    end
    def show
      deep_dup(my_array)
    end
    def deep_dup(arr)
        my_array{ |el| el.is_a?(Array) ? deep_dup(el) : el }
    end
end
