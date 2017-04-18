class Student
  # attr_accessor :name, :id
  
  def initialize(student_name,student_id)
    @student_name = student_name
    @student_id = student_id
  end

  def student_name
    return @student_name
  end

  def student_id
    return @student_id
  end

  def update_student_name(new_name)
    @student_name = new_name
    return @student_name
  end

  def update_student_id(new_id)
    @student_id = new_id
  end

  def student_talks(string_of_what_student_says)
    return string_of_what_student_says
  end

  def student_favourite_language
    start_of_sentence = student_talks("I love ")
    favourite_language = "Ruby"
    return start_of_sentence.concat(favourite_language)
  end


end