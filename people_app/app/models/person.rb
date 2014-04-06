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

  def over18?
    now = DateTime.now
    age = now.year - self.birthdate.year
    age -=1 if(now.yday < self.birthdate.yday)
    if age > 18
      return true
    else
      return false
    end
  end

  def drive_a_car
    if !self.over18?
      return "Not yet youngin"
    elsif self.over18? && self.license && self.drinks <= 2
      return "Stay safe!"
    elsif self.over18? && !self.license
      return "Get a license first"
    elsif self.drinks >= 3
      return "Looks like a cab for you tonight"
    end
  end

  def sober_up
    if self.drinks > 0
      self.drinks -= 1
    end
  end
end
