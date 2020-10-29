# app/jobs/hello_world_job.rb
class TestJob < ApplicationJob
  include Retryable
  queue_as :default

  
  discard_on StandardError
  rescue_from StandardError do
    retry_job wait: wait.minutes, queue: :default, retries_count: retries_count if retries_count < 2
  end
  
  # retry_on StandardError, wait: 5.seconds, attempts: 3

  def perform(name)
    # This will be excuted successfully
    puts "Test job argument with index: #{name} "

    # This will trigger the rescue as it will give a StandardError
    # puts "Test job #{k}"
  end
end
