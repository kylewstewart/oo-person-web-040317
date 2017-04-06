require 'pry'

class Person

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(index_level)
    if index_level > 10
      @happiness = 10
    elsif index_level < 0
      @happiness = 0
    else
      @happiness = index_level
    end
  end

  def hygiene=(index_level)
    if index_level > 10
      @hygiene = 10
    elsif index_level < 0
      @hygiene = 0
    else
      @hygiene = index_level
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
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(other_person)
    self.happiness += 3
    other_person.happiness += 3
    "Hi #{other_person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(other_person, topic)
    if topic == "politics"
      self.happiness -= 2
      other_person.happiness -= 2
      return 'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      self.happiness += 1
      other_person.happiness += 1
      return 'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end

end


# isaac = Person.new("Isaac")
#
# isaac.hygiene(4)
# isaac.take_bath
# puts isaac.hygiene
