class ActorsController < ApplicationController
  def get_id_method
    actor = Actor.find_by(id: 1)
    render json: actor.as_json
  end
   

  def single_actor_query
    id = params[:id]
    actor = Actor.find(id)
    render json: actor.as_json
  end

  def single_actor_segment
    id = params[:id]
    actor = Actor.find(id)
    render json: actor.as_json
  end

  def single_actor_body
    id = params[:id]
    actor = Actor.find(id)
    render json: actor.as_json
  end


end
