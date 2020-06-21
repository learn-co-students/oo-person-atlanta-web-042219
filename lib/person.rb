class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene


    
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        
    end 

    def happiness=(happiness)
        @happiness = happiness
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end 

    def hygiene=(hygiene)
        @hygiene = hygiene
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end 

    def happy?
         @happiness > 7 
    end 

    def clean?
        @hygiene > 7
    end 

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?" 
    end 

    def start_conversation(friend, topic)
        case topic 
            when "politics"
                self.happiness -= 2
                friend.happiness -= 2
                return "blah blah partisan blah lobbyist"
            when "weather"
                self.happiness += 1
                friend.happiness += 1
                return 'blah blah sun blah rain'

            else "other "
                return "blah blah blah blah blah"
         end 
    end 

end 