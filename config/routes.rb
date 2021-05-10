Rails.application.routes.draw do
  get "/get_id_path", controller: "actors", action: "get_id_method"

  get "/all_movies", controller: "movies", action: "all_movies"

  get "/first_movie", controller: "movies", action: "first_movie"
  
  get "/second_movie", controller: "movies", action: "second_movie"


  get "/single_actor_query" => "actors#single_actor_query"

  get "/single_actor_segment/:id" => "actors#single_actor_segment"

  post "/single_actor_body" => "actors#single_actor_body"

end
