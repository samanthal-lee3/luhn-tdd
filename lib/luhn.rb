 class Luhn

    #build an instance of the luhn class
    def initialize(arr)
      @luhn = arr
    end

    #build new array
    #store doubled val of each even index
    #store original val of each odd index
    def double_digits
      @doubled = []

      @luhn.each_with_index do |val, index|
        if (index %2 == 0)
          doubled_digit = val * 2
          @doubled << doubled_digit
        else
          @doubled << val
        end
      end
    end

    #Build a new array. For each index...
    #if val>=10, subtract 9 and store new val
    #if val<10, store original val
    def compare_num
      @subtracted = []

      doubled.each_with_index do |val, index|
        if val > 10
          changed_num = val - 9
          @subtracted << changed_num
        else
          @subtracted << val
        end
      end
    end
    
    #sum total of @subtracted array
    #divide total by 10 and test for valid num
    def test_validity
     card_sum = @subtracted.sum
     if 
        card_sum %10 == 0
        puts "Success!"
     else
        puts "Invalid Card Number- Try Again"
      end
    end

  end