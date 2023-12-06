class Student
  attr_accessor :surname, :name, :patronymic, :gender, :age, :course

  def initialize(surname, name, patronymic, gender, age, course)
    @surname = surname
    @name = name
    @patronymic = patronymic
    @gender = gender
    @age = age
    @course = course
  end

  def get_full_name
    "#{surname} #{name[0]}. #{patronymic[0]}."
  end
end

class HRDepartment
  attr_accessor :students  

  def initialize(students)
    @students = students
  end  

  def add_student(student)    
    students << student
  end

  def print_most_common_names
    male_names = students.select { |student| student.gender == 'male' }.map(&:name)
    female_names = students.select { |student| student.gender == 'female' }.map(&:name)

    most_common_male_name = male_names.max_by { |name| male_names.count(name) }
    most_common_female_name = female_names.max_by { |name| female_names.count(name) }

    puts "Most common male name: #{most_common_male_name}"
    puts "Most common female name: #{most_common_female_name}"
  end

  def print_course_with_highest_male_percentage
    course_counts = Hash.new(0)
    male_counts = Hash.new(0)
    female_counts = Hash.new(0)

    students.each do |student|
      course_counts[student.course] += 1
      male_counts[student.course] += 1 if student.gender == 'male'
    end

    highest_male_percentage_course = male_counts.max_by { |course, count| count.to_f / course_counts[course] }&.first        

    puts "Course with highest male percentage: #{highest_male_percentage_course}"
  end

  def print_sorted_surnames
    sorted_surnames = students.map(&:surname).sort

    puts "Surnames in alphabet order: #{sorted_surnames.join(', ')}"
  end

  def print_most_common_initials_for_female_students
    female_students = students.select { |student| student.gender == 'female' }
    female_students_with_most_common_age = female_students.group_by(&:age).max_by { |age, students| students.length }&.last

    most_common_initials = female_students_with_most_common_age.map(&:get_full_name)
    puts "Name initials for female students with most common age: #{most_common_initials.join(', ')}"
  end
end

students_data = [
  ['Лемешенко', 'Микола', 'Ігорович', 'male', 20, 1],
  ['Басюк', 'Остап', 'Петрович', 'male', 21, 3],
  ['Зубицький', 'Микола', 'Олександрович', 'male', 21, 3],
  ['Сидоренко', 'Марія', 'Сергіївна', 'female', 22, 3],
  ['Головенко', 'Анастасія', 'Антонівна', 'female', 20, 1],
  ['Довбуш', 'Анастасія', 'Миколаївна', 'female', 20, 1],  
]

students = students_data.map { |data| Student.new(*data) }
hr_department = HRDepartment.new(students)

hr_department.print_course_with_highest_male_percentage
hr_department.print_most_common_names
hr_department.print_sorted_surnames
hr_department.print_most_common_initials_for_female_students
