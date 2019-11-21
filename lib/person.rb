# your code goes here
class Person

    attr_reader :name, :hygiene, :happiness #Exterenal users can directly set these to a value!
    attr_writer :bank_account #External users cannot set this directly. Provided thru a ??? method

    def initialize(name)
        @name = name
        @bank_account = 25.0
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name
    end

    def bank_account
        @bank_account
    end

    def happiness=(new_value=0)
        @happiness = new_value
        if @happiness > 10 
            @happiness=10
        elsif @happiness < 0
            @happiness = 0
        end
        @happiness
    end

    def hygiene=(new_value=0)
        @hygiene = new_value
        if @hygiene > 10 
            @hygiene=10
        elsif @hygiene < 0
            @hygiene = 0
        end
        @hygiene
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(another_person)
        self.happiness = self.happiness + 3
        another_person.happiness = another_person.happiness + 3
        "Hi #{another_person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(some_other_person,topic) 
        if topic == "politics" 
            self.happiness = self.happiness - 2
            some_other_person.happiness = some_other_person.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = self.happiness + 1
            some_other_person.happiness = some_other_person.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end

