class StudentsController < ApplicationController

    def index 
        render json: Student.all
    end

    def grades 
        render json: Student.all.order(grade: :desc)
    end

    def highest_grade
        high_to_low_list = Student.all.order(grade: :desc)
        render json: high_to_low_list.first
    end
end
