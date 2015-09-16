class PetOfTheWeeksController < ApplicationController
  
  def this_week
    @this_weeks_pet = PetOfTheWeek.last
  end

  def submit
    @pet_of_the_week = PetOfTheWeek.new
  end

  def new
  end

  def create
    @pet_of_the_week = PetOfTheWeek.new(pet_of_the_week_params)
    if @pet_of_the_week.save
      flash[:notice] = "Your Pet Has Been Submitted!"
    else
      flash[:error] = "Somthing went wrong"
    end
    redirect_to '/'
  end

  private

    def pet_of_the_week_params
      params.require(:pet_of_the_week).permit(:name, :age, :description, :avatar)
    end
end
