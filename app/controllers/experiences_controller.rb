class ExperiencesController < ApplicationController
  def show
    @experiences = Experience.where(user_id: params[:user_id])
  end
end
