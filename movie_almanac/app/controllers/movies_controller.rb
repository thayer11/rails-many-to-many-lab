class MoviesController < ApplicationController
  def index
    @movies = Movie.all 
    render :index
  end

  def show
    @movie = Movie.find_by_id(params[:id])
    render :show
  end

  def new
  end

  def create
  end

  def destroy
  end
end
