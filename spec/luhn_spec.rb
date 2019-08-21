require 'spec_helper'
  require_relative '../lib/luhn'

describe Luhn do

  it "should take the value of a credit card" do
    my_card = Luhn.new([4,1,9,4,5,6,0,3,8,5,0,0,8,5,0,5])
    expect(my_card).to eq([4,1,9,4,5,6,0,3,8,5,0,0,8,5,0,5])
  end

  it "should double the value of each even index" do
    my_card = Luhn.new([4,1,9,4,5,6,0,3,8,5,0,0,8,5,0,5])
    expect(my_card.value).to eq([8,1,18,4,10,6,0,3,16,5,0,0,16,5,0,5])
  end

  it "should adjust values if val>10" do 
   
  end

   it "should test for valid card number" do 
    
  end


end
    

  


   