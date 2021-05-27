require "./personalised.rb"

describe "raising error" do
    it "should throw Type Error if number or empty string is included in the input" do
    expect{raise TypeError}.to raise_error
    end
    it "matches the error message" do
      expect{raise TypeError, "I need your answer but don't use numbers!"}.to raise_error("I need your answer but don't use numbers!")
    end
end 

describe @female_name do
    it "should not start with number" do
    expect(@female_name).not_to start_with(/\d/)
    end
    it "should have a value" do
        @female_name = "Ana"
        expect(@female_name).to eq("Ana")
    end
end