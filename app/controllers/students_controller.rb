class StudentsController < ApplicationController

    before_action :set_Student, only: [:show, :update, :destroy]

    def index
        render json: Student.all
    end

    def show
        render json: @student
    end

    def update
        @student.update!(student_params) 
        render json: @student, status: :accepted
    end

    def destroy
        @student.destroy
        head :no_content
    end

    private

    def student_params
        params.permit(:name, :major, :age, :instructor_id)
    end

    def set_Student
        @student = Student.find_by(id: params[:id])
    end

end
