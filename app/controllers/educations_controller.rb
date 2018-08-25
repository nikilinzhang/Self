class EducationsController < ApplicationController
  def show
    @educations = Education.where(user_id: params[:user_id])
  end
end
