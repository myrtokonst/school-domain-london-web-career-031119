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
   roster.collect do |grade, students|
   roster[grade].sort
 end
 
 binding.pry
 puts "dfhbkvj"
 end
end 