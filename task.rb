class Student
  attr_accessor :surname, :school_num, :grade, :place

  def initialize(surname, school_num, grade, place)
    @surname = surname
    @school_num = school_num
    @grade = grade
    @place = place
  end
end
