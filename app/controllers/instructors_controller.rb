class InstructorsController < ApplicationController

    before_action :set_instructor, only: [:show, :update, :destroy]

    def index
        render json: Instructor.all
    end

    def show
        render json: @instructor
    end

    def update
        @instructor.update!(instructor_params) 
        render json: @instructor, status: :accepted
    end

    def destroy
        @instructor.destroy
        head :no_content
    end

    private

    def instructor_params
        params.permit(:name)
    end

    def set_instructor
        @instructor = Instructor.find_by(id: params[:id])
    end

end
