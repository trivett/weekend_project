require "spec_helper"

describe Person do
  context "with 2 or more comments" do
    it "has a full name" do
      adam = Person.new(:firstname => "Adam", :lastname => "Bray")
      expect(adam.name).to eq("Adam Bray")


    end
  end
end




# should return a string that is the object's birthday
# #have_a_drink
# if they are over 21 then they can drink and the number stored in the drinks attribute is increased by 1
# if they are under 21 then the string "Wait a few years" is returned
# if they can drink, they are not allowed to have more than three drinks otherwise the string "Go home you're drunk"
# #drive_a_car
# if they are under 18 then a string "Not yet youngin" is returned
# if they are 18 and they have a license then they can drive
# if they are over 18 and have a license then they can drive
# if they are over 21, have a license, and are drunk then the string "Looks like a cab for you tonight" is returned
# #sober_up
# if they have any drinks, it decreases it by 1
# if they have no drinks, nothing happens
