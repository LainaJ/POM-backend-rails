class Api::V1::TasksController < ApplicationController
    
    def index
        @tasks = Task.all 
        render json: @tasks
    end 

    def show
        @task = Task.find(params[:id])
        render json: @task 
    end 

    def create
        @task = Task.create!(task_params)
    end

    def update
    end

    def destroy
    end 

    private

    def task_params
        params.require(:task).permit(:description, :user_id, :importance, :urgency, :pomodoros, :complete_status, :category, :predicted_pom, :environment)
    end

end
