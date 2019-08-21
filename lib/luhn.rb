 class Luhn



    def initialize(arr)
      @luhn = arr
    end


    #for each even index, replace val with doubled val
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


    #for each index, if val>10, subtract 9 and store new val
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