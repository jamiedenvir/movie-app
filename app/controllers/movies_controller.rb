class MoviesController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index
    movies = Movie.where(english: true)
    render json: movies.as_json
  end

  def show
    movie = Movie.find(params[:id])
    render json: movie.as_json
  end

  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]

      )
    movie.save
    render json: movie.as_json

    if movie.save
      render json: movie
    else
      render json: {errors: movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.director = params[:director] || movie.director
    movie.english = params[:english] || movie.english

    movie.save
    render json: movie.as_json
    if movie.save
      render json: movie
    else
      render json: {errors: movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "You've done it. You've destroyed the movie."}
    
  end



end
