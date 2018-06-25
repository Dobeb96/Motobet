class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  end

  def about_us
    @test = '123'
  end

  def about_our_work
  end
end