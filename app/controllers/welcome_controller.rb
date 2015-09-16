class WelcomeController < ApplicationController
  def index
    @pet_of_the_weeks = PetOfTheWeek.all
    @pet_of_the_week = PetOfTheWeek.new
    @this_weeks_pet = PetOfTheWeek.last
    @posts = Post.all
  end
end
