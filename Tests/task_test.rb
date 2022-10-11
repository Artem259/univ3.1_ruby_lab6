require 'minitest/autorun'
require_relative '../task.rb'

class Test_task < Minitest::Test
  def setup
    @arr = []
    @arr << Student.new("Williams", 138, 7, 1)
    @arr << Student.new("Brown", 138, 8, 1)
    @arr << Student.new("Smith", 125, 10, 1)
    @arr << Student.new("Johnson", 98, 10, 1)

    @arr << Student.new("Jones", 125, 8, 2)
    @arr << Student.new("Miller", 125, 6, 2)
    @arr << Student.new("Garcia", 98, 9, 2)
    @arr << Student.new("Davis", 91, 8, 2)
    @arr << Student.new("Rodriguez", 257, 7, 2)
    @arr << Student.new("Martinez", 95, 5, 2)

    @arr << Student.new("Hernandez", 257, 8, 3)
    @arr << Student.new("Wilson", 257, 8, 3)
    @arr << Student.new("Gonzalez", 91, 9, 3)
    @arr << Student.new("Anderson", 91, 5, 3)
    @arr << Student.new("Lopez", 98, 10, 3)

    @arr << Student.new("Taylor", 215, 7, 4)
    @arr << Student.new("White", 215, 8, 4)
    @arr << Student.new("Harris", 215, 7, 4)
    @arr << Student.new("Thomas", 178, 8, 4)
    @arr << Student.new("Sanchez", 178, 8, 4)
    @arr << Student.new("Moore", 257, 10, 4)
    @arr << Student.new("Perez", 257, 9, 4)
    @arr << Student.new("Jackson", 125, 6, 4)
    @arr << Student.new("Lee", 95, 10, 4)
    @arr << Student.new("Thompson", 95, 6, 4)
    @arr << Student.new("Martin", 91, 8, 4)
  end
  def test_1
    res = @arr.select{|i| i.place <= 3}.map{|i| i.school_num}
    res = res.uniq
    assert_equal [138, 125, 98, 91, 257, 95], res
    print "1) ", res, "\n"
  end
  def test_2
    res = @arr.select{|i| i.place <= 3}.map{|i| i.school_num}
    res = res.inject(Hash.new(0)){|h,v| h[v] += 1; h}
    assert res != nil
    res = res.max_by{|_, v| v}.first
    assert_equal 125, res
    print "2) ", res, "\n"
  end
  def test_3
    res = @arr.select{|i| i.place == 1}.map{|i| [i.surname, i.grade]}
    assert_equal [["Williams", 7], ["Brown", 8], ["Smith", 10], ["Johnson", 10]], res
    print "3) ", res, "\n"
  end
end
