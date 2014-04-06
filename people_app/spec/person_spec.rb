require "spec_helper"

describe Person do
  it "has a full name" do
    adam = Person.new(:firstname => "Adam", :lastname => "Bray")
    expect(adam.name).to eq("Adam Bray")
  end

  it "has a birthday" do
    adam = Person.new(:firstname => "Adam", :lastname => "Bray", :birthdate => Date.new(1981,2,3))
    expect(adam.birthday).to eq("February 3, 1981")
  end

  it "can have a drink if over 21" do
    adam = Person.new(:firstname => "Adam", :lastname => "Bray", :birthdate => Date.new(1981,2,3), :drinks => 1)
    mike = Person.new(:firstname => "Mike", :lastname => "Bray", :birthdate => Date.new(1981,2,3), :drinks => 3)
    bob = Person.new(:firstname => "Bob", :lastname => "Bray", :birthdate => Date.new(2000,2,3))
    expect(adam.have_a_drink).to eq("enjoy")
    expect(mike.have_a_drink).to eq("Go home you're drunk")
    expect(bob.have_a_drink).to eq("Wait a few years")
  end




end


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
