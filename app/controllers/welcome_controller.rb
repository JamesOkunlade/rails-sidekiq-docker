# app/controllers/welcome_controller.rb
class WelcomeController < ApplicationController
  def index
    TestJob.perform_later('James')
  end
end