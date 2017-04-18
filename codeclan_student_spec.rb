require("minitest/autorun")
require('minitest/rg')
require_relative('./codeclan_student.rb')

class TestStudent < Minitest::Test

  # def setup
  #   @student = student.new("Gill",12)
  # end

  def test_student_name
    student_details = Student.new("Gill", 12)
    assert_equal("Gill",student_details.student_name)
  end

  def test_student_id
    student_details = Student.new("Gill", 12)
    assert_equal(12, student_details.student_id)
  end

  def test_change_student_name
    student_details = Student.new("Gill", 12)
    student_details.update_student_name("Tom")
    assert_equal("Tom",student_details.student_name)
  end

  def test_change_student_id
    student_details = Student.new("Gill", 12)
    student_details.update_student_id(14)
    assert_equal(14,student_details.student_id)
  end

def test_student_talks
  student_details = Student.new("Gill", 12)
  what_student_says = student_details.student_talks("I can talk")
  assert_equal("I can talk", what_student_says)

end

def test_students_favourite_language
  student_details = Student.new("Gill", 12)
  students_fav_language = student_details.student_favourite_language

  assert_equal("I love Ruby", students_fav_language)
end







end