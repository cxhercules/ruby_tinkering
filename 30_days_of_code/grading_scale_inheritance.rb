class Person
	def initialize(firstName, lastName, id)
		@firstName = firstName
		@lastName = lastName
		@id = id
	end
	def printPerson()
		print("Name: ",@lastName , ", " + @firstName ,"\nID: " , @id)
	end
end

class Student <Person
  def initialize(firstName, lastName, id, scores)
		@firstName = firstName
		@lastName = lastName
		@id = id
    @scores = scores
	end
  def calculate()
    #print("\n@scores", @scores)
    sum = 0 #
    avarage = 0
    @scores.each_index do |i|
      sum += @scores[i]
    end
    avarage = sum / @scores.length
    print("\navarage: ", avarage)
    if (avarage >= 90) && (avarage <= 100)
      return "O"
    elsif (avarage >= 80) && (avarage < 90)
          return "E"
    elsif (avarage >= 70) && (avarage < 80)
          return "A"
    elsif (avarage >= 55) && (avarage < 70)
          return "P"
    elsif (avarage >= 40) && (avarage < 55)
          return "D"
    elsif (avarage < 40)
          return "T"
    else
          print("Something is wrong!!")
    end
  end
end

input = gets.split()
firstName = input[0]
lastName = input[1]
id = input[2].to_i
numScores = gets.to_i
scores = gets.strip().split().map!(&:to_i)
s = Student.new(firstName, lastName, id, scores)
s.printPerson
print("\nGrade: " + s.calculate)
