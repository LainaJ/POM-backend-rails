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
<<<<<<< HEAD
=======
        render json: @task
>>>>>>> 2267bba924c292cdc86af2b5f1413124a64c9ee2
    end

    def update
        @task = Task.find(params[:id])
        @task.update(task_params)
        render json: @task
    end

    def destroy
       Task.find(params[:id]).destroy

    end 

    private

    def task_params
        params.require(:task).permit(:description, :user_id, :importance, :urgency, :pomodoros, :complete_status, :category, :predicted_pom, :environment, :priority_order)
    end 


end
