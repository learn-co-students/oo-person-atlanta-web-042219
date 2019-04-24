# your code goes here
class Person
attr_accessor :bank_account

  def initialize (name)
    @name = name
    @balance = 25
    @happiness = 8
  end

  def name
    @name
  end

  def bank_account
    @balance
  end

  def happiness
    @happiness
  end

  def happiness= (points)
    if points < 10
      @happiness = points
    elsif points < 0
      @happiness = 0
    
    end
  end

end
