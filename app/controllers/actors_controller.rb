class ActorsController < ApplicationController
  def get_id_method
    actor = Actor.find_by(id: 1)
    render json: actor.as_json
  end
   
end
