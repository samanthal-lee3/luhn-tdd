require 'spec_helper'
  require_relative '../lib/luhn'

describe Luhn do
 
  it "should take the value of a credit card" do
    #arrange
    my_card = Luhn.new("4194560385008505")

    #act
    results = my_card.string_to_array
    #assert
    expect(results).to eq([4,1,9,4,5,6,0,3,8,5,0,0,8,5,0,5])
  end

  it "#double_digits should double the value of each even index" do
    #arrange
    my_card = Luhn.new("4194560385008505")

    #act
    results = my_card.double_digits

    #assert
    expect(results).to eq([8, 1, 18, 4, 10, 6, 0, 3, 16, 5, 0, 0, 16, 5, 0, 5])
  end

  it "#compare_num should adjust values if val>=10" do 
    #arrange
    my_card = Luhn.new("4194560385008505")

    #act
    results = my_card.compare_num

    #assert
   expect(results).to eq([8,1,9,4,1,6,0,3,7,5,0,0,7,5,0,5])
  end

  context 'when data is invlaid' do 
    it "#valid? should test for invalid card number" do 
      #arrange
      my_card = Luhn.new("4194560385008505")

      #act
      result = my_card.valid?

      #assert
      expect(result).to eq(false)
    end
  end

  context 'when data is valid' do 
    it "#valid? should test for valid card number" do 
      #arrange
      my_card = Luhn.new("4194560385008504")

      #act
      result = my_card.valid?

      #assert
      expect(result).to eq(true)
    end
  end

end
    

  


   