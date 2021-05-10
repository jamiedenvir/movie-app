class MoviesController < ApplicationController

  def all_movies
    movies = Movie.all
    render json: movies.as_json
  end

  def first_movie
    movie = Movie.first
    render json: movie.as_json
  end

  def second_movie
    movie = Movie.second
    render json: movie.as_json
  end

 



end
