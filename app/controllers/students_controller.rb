class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end

    def grades
        students = Student.all.sort_by { |s| s[:grade] * -1}
        render json: students
    end
end
