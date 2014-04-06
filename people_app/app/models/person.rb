class Person <ActiveRecord::Base

  def name
    return "#{self.firstname} #{self.lastname}"
  end

end
