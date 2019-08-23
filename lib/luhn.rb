 class Luhn

    #build an instance of the luhn class
    def initialize(input)
      @input = input
    end

    #convert string of numbers to data array
    def string_to_array
      @input.chars.map {|e| e.to_i}
    end

    #double value of each even index
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

    #adjust val based on relation to 10
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
    
    #sum total and test for validity
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