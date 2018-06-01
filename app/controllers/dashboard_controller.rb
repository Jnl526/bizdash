class DashboardController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
    
  def index
    @users = User.all
    @schedules = Schedule.all
    end
    def show

    end

    
end
