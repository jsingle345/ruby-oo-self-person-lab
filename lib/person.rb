# your code goes here
class Person

    attr_reader :name, :bank_account, :happiness, :hygiene
    attr_writer :bank_account, :happiness, :hygiene

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
            @name = name
            @bank_account = bank_account
            @happiness = happiness
            @hygiene = hygiene
        end

        def happiness=(point)
            @happiness = point
            if @happiness > 10
               return @happiness = 10
            elsif @happiness < 0
               return @happiness = 0
            end
        end
        def hygiene=(point)
            @hygiene = point
            if @hygiene > 10
               return @hygiene = 10
            elsif @hygiene < 0
               return @hygiene = 0
            end
        end

        def happy?
            if @happiness > 7
            true
            else false
            end
        end

        def clean?
            if @hygiene > 7
            true
            else false
            end
        end

        def get_paid(salary)
            @bank_account += salary
            "all about the benjamins"
        end

        def take_bath
            self.hygiene=@hygiene += 4
            "♪ Rub-a-dub just relaxing in the tub ♫"
        end

        def work_out
            self.hygiene=@hygiene -= 3
            self.happiness=@happiness += 2
            "♪ another one bites the dust ♫"
        end

        def call_friend(friend_name)
            self.happiness=@happiness += 3
            friend_name.happiness += 3
            "Hi #{friend_name.name}! It's #{self.name}. How are you?"
        end

        def start_conversation(person, topic)
            if topic == "politics"
              self.happiness -= 2
              person.happiness -= 2
               p "blah blah partisan blah lobbyist"
            elsif topic == "weather"
                self.happiness += 1
                person.happiness += 1
               p "blah blah sun blah rain"
            else 
                p "blah blah blah blah blah"
            end
        
        end
end