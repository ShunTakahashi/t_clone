class TwtsController < ApplicationController
  def index
    @twts=Twt.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
  end
end
