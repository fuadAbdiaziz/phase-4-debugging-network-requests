class MoviesController < ApplicationController
  wrap_parameters format: []

  def index
    movies = Movie.all
    render json: toys
  end

  def create
    movie = Movie.create(toy_params)
    render json: toy, status: :created
  end

  def update
    movie = Movie.find_by(id: params[:id])
    render json: toy.update(toy_params)
  end

  def destroy
    toy = Movie.find_by(id: params[:id])
    movie.destroy
    head :no_content
  end

  
  private
  
  def toy_params
    params.permit(:name, :image, :likes)
  end

end
