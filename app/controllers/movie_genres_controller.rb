class MovieGenresController < ApplicationController

  def create
    movie_genre = MovieGenre.new(
      movie_id: params[:movie_id], 
      genre_id: params[:genre_id]
    )
    if movie_genre.save
      render json: movie_genre.as_json
    else
      render json: {errors: movie_genre.errors.full_messages}, status: :unprocessable_entity
    end
    
  end

end
