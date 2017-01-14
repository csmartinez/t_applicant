class ExampleController < ApplicationController

  def index
  end

  def show
    @reviews = Review.all
  end
end
