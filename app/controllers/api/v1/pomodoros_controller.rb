class Api::V1::PomodorosController < ApplicationController

    def index
        @pomodoros = Pomodoro.all 
        render json: @pomodoros
    end 

    def show
        @pomodoro = Pomodoro.find(params[:id])
        render json: @pomodoro 
    end 

    def create
        @pomodoro = Pomodoro.create(pomodoro_params)
    end

    private

    def pomodoro_params
        params.require(:pomodoro).permit(:timer_length, :break_length)
    end 

end
