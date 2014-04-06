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

  it "can drive a car if of age and sober" do
    adam = Person.new(:firstname => "Adam", :lastname => "Bray", :birthdate => Date.new(1981,2,3), :drinks => 1, :license => true)
    mike = Person.new(:firstname => "Mike", :lastname => "Bray", :birthdate => Date.new(1981,2,3), :license => true, :drinks => 3)
    bob = Person.new(:firstname => "Bob", :lastname => "Bray", :birthdate => Date.new(2000,2,3))
    susan = Person.new(:firstname => "Susan", :lastname => "Bray", :birthdate => Date.new(1995,2,3), :license => true, :drinks => 0)
    michelle = Person.new(:firstname => "Michelle", :lastname => "Bray", :birthdate => Date.new(1995,2,3), :license => false)
    expect(bob.drive_a_car).to eq("Not yet youngin")
    expect(susan.drive_a_car).to eq("Stay safe!")
    expect(michelle.drive_a_car).to eq("Get a license first")
    expect(mike.drive_a_car).to eq("Looks like a cab for you tonight")
    expect(adam.drive_a_car).to eq("Stay safe!")
  end

  it "can sober up" do
    mike = Person.new(:firstname => "Mike", :lastname => "Bray", :birthdate => Date.new(1981,2,3), :license => true, :drinks => 3)
   susan = Person.new(:firstname => "Susan", :lastname => "Bray", :birthdate => Date.new(1995,2,3), :license => true, :drinks => 0)
    mike.sober_up
    susan.sober_up
    expect(mike.drinks).to eq(2)
    expect(susan.drinks).to eq(0)
  end
end

# if they have any drinks, it decreases it by 1
# if they have no drinks, nothing happens
