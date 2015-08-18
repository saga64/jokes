class JokesController < ApplicationController
  def index
    @jokes = Joke.latest(cookies[:last_time_stamp])

    respond_to do |format|
      format.html
      format.json { render json: @jokes, serializer: JokeSerializer }
    end
  end

  def create

  end
end
