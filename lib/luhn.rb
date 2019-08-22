 class Luhn

    #build an instance of the luhn class
    def initialize(input)
      @input = input
    end

    def string_to_array
      @input.chars.map {|e| e.to_i}
    end

    #build new array
    #store doubled val of each even index
    #store original val of each odd index
    def double_digits
      doubled = []

      string_to_array.each_with_index do |val, index|
        if index % 2 == 0
          doubled << val * 2
        else
          doubled << val
        end
      end
      doubled
    end

    #Build a new array. For each index...
    #if val>=10, subtract 9 and store new val
    #if val<10, store original val
    def compare_num
      subtracted = []

      double_digits.each_with_index do |val, index|
        if val >= 10
          subtracted << val - 9
        else
          subtracted << val
        end
      end
      subtracted
    end
    
    #sum total of @subtracted array
    #divide total by 10 and test for valid num
    def valid?
     card_sum = compare_num.sum
     if 
        card_sum % 10 == 0
        true
     else
        false
      end
    end

  end