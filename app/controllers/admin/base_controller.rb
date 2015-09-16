class Admin::BaseController < ApplicationController
  layout 'admin'

  def index
    @pet_of_the_weeks = PetOfTheWeek.all
  end

  def blog
    @posts = Post.all
  end

end
