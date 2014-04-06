class Person <ActiveRecord::Base

  def name
    return "#{self.firstname} #{self.lastname}"
  end

  def birthday
    return self.birthdate.strftime("%B%e, %Y")
  end
end
