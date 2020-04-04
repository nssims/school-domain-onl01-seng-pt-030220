class School
  attr_accessor :roster

  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    # @roster[grade] = []
    if @roster.keys.include?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.sort_by do |grade, name|
      [grade, name.sort!]
    end.to_h
  end

end