Rails.application.routes.draw do
  get "/get_id_path", controller: "actors", action: "get_id_method"

end
