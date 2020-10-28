# app/controllers/welcome_controller.rb
class WelcomeController < ApplicationController
  def index
    HelloWorldJob.set(wait: 30.seconds).perform_later('One', 'two', 'three', 'four')

    # TestJob.perform_later('James', 'Okunlade', 'Rachel', 'Omotayo')

    # TestJob.set(queue: :morgue).perform_later('James', 'Okunlade', 'Rachel', 'Omotayo')

  end
end