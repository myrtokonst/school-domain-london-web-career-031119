# code here!
require "pry"
class School 
 attr_accessor :name, :roster 
  
  def initialize (name)
    @name = name
    @roster = {}
  end 
 def add_student (student_name, grade)
   if !roster.include?(grade)
   roster[grade] = []
   roster[grade] << student_name
 else 
   roster[grade] << student_name
 end 
end 
 
 def grade(grade_num)
   return roster[grade_num]
 end
 
 def sort 
    roster = roster.collect do |grade, students|
      {grade => roster[grade].sort!}
    end
    puts roster
    # roster = roster.first
    # roster.sort_by {|grade, v| grade}
 end
end 