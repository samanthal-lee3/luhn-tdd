require 'spec_helper'
  require_relative '../lib/luhn'

describe Luhn do
 
  it "should take the value of a credit card" do
    #arrange
    my_card = Luhn.new([4,1,9,4,5,6,0,3,8,5,0,0,8,5,0,5])

    #act

    #assert
    expect(my_card).to eq(my_card)
  end

  it "should double the value of each even index" do
    #arrange
    my_card = Luhn.new([4,1,9,4,5,6,0,3,8,5,0,0,8,5,0,5])

    #act
    my_card.double_digits

    #assert
    expect(my_card).to eq([8,1,18,4,10,6,0,3,16,5,0,0,16,5,0,5])
  end

  it "should adjust values if val>=10" do 
    #arrange
    my_card = Luhn.new([4,1,9,4,5,6,0,3,8,5,0,0,8,5,0,5])

    #act
    my_card.double_digits
    my_card.compare_num

    #assert
   expect(my_card).to eq([8,1,9,4,1,6,0,3,7,5,0,0,7,5,0,5])
  end

  it "should test for valid card number" do 
    #arrange
    my_card = Luhn.new([4,1,9,4,5,6,0,3,8,5,0,0,8,5,0,5])

    #act
    my_card.double_digits
    my_card.compare_num
    my_card.test_validity

    #assert
    expect(my_card).to eq("Invalid Card Number")
  end

end
    

  


   