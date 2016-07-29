class ActorsController < ApplicationController
  def index
  @movie = Movie.all
  @actors = Actor.all
    render :index
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end
end
