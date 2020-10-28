# app/jobs/hello_world_job.rb
class TestJob < ApplicationJob
  queue_as :default
#   retry_on CustomAppException # defaults to 3s wait, 5 attempts
#   retry_on(*exceptions, wait: 30.seconds, attempts: 2)

#   def discard_on(*exceptions)
#     rescue_from(*exceptions) do |error|
#       instrument :discard, error: error do
#         yield self, error if block_given?
#       end
#     end
#   end

#   discard_on ActiveJob::DeserializationError

  def perform(*args)
    # args.each { |i| Might raise CustomAppException or ActiveJob::DeserializationError }
    # Might raise CustomAppException or ActiveJob::DeserializationError
  end


  
end