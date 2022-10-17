class GreetingsController < ApplicationController
  def index
    @greetings = Greeting.all
    @greeting = @greetings.sample
    render json: { greeting: @greeting.text }, status: :ok
  end
end
