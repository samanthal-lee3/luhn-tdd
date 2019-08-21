 class Luhn

    def initialize(arr)
    end


    #for each even index, replace val with doubled val
    def double_digits(arr)

      arr.each_with_index do |val, index|
        if (index %2 == 0)
          doubled_digit = val * 2
          doubled_digit = arr[arr.index(val)]
        end
      end
      puts arr
    end

    #for each index, if val>10, subtract 9 and store new val
    #def compare_num(arr)
      #reversed_num.each_with_index do |val, index|
        #if val > 10
          #changed_num = val - 9
          #changed_num = reversed_num[reversed_num.index(val)]
        #end
      #end
    #end
    
    #if sum of all digits is divisible by 10, render valid 
    #def test_validity(arr)
      #sum all values
      #divide by 10
      #if /10 = 0
        #puts "Success!"
        #else
        #puts "Invalid Card Number"
      #end
    #end

  end