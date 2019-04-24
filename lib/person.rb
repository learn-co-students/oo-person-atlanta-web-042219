# your code goes here

class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    @happiness = happiness
   if happiness > 10
     @happiness = 10
   elsif happiness < 0
     @happiness = 0
   else
     @happiness = happiness
   end
 end

  def hygiene=(hygiene)
    @hygiene = hygiene
    if hygiene > 10
      @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    else
      @hygiene = hygiene
    end
  end

  def clean?
    if hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if happiness > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
  end

  def take_bath
    @hygiene +=4
    self.hygiene = @hygiene
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @happiness +=2
    @hygiene -=3
    self.hygiene = @hygiene
    self.happiness = @happiness
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness +=1
      friend.happiness +=1
      return "blah blah sun blah rain"
    else
      @happiness = happiness
      return "blah blah blah blah blah"
    end
  end
end
