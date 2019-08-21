require 'spec_helper'
  require_relative '../lib/luhn'

describe Luhn do
 
  it "should take the value of a credit card" do
    my_card = Luhn.new([4,1,9,4,5,6,0,3,8,5,0,0,8,5,0,5])
    expect(my_card).to eq(my_card)
  end

  it "should double the value of each even index" do
    my_card = Luhn.new([4,1,9,4,5,6,0,3,8,5,0,0,8,5,0,5])
    doubled = []
    expect(my_card.double_digits).to eq([8,1,18,4,10,6,0,3,16,5,0,0,16,5,0,5])
  end

  it "should adjust values if val>=10" do 
   my_card = Luhn.new([8,1,18,4,10,6,0,3,16,5,0,0,16,5,0,5])

   expect(my_card).to eq([8,1,9,4,1,6,0,3,7,5,0,0,7,5,0,5])
  end

  it "should test for valid card number" do 
    my_card = Luhn.new([8,1,9,4,1,6,0,3,7,5,0,0,7,5,0,5])
    expect(my_card).to eq("Invalid Card Number")
  end

end
    

  


   