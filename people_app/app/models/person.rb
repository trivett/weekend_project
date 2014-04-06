class Person <ActiveRecord::Base

  def name
    return "#{self.firstname} #{self.lastname}"
  end

  def birthday
    return self.birthdate.strftime("%B%e, %Y")
  end

  def over21?
    now = DateTime.now
    age = now.year - self.birthdate.year
    age -=1 if(now.yday < self.birthdate.yday)

    if age > 21
      return true
    else
      return false
    end
  end

  def have_a_drink
    if self.over21? && self.drinks <= 2
      self.drinks += 1
      return "enjoy"
    elsif self.over21? && self.drinks >= 3
      return "Go home you're drunk"
    elsif !self.over21?
      "Wait a few years"
    end
  end



end
