# app/jobs/hello_world_job.rb
class HelloWorldJob < ApplicationJob
    queue_as :default

    def perform (*args)
        args.each do
            |i|
            puts "Hello world from here with the argument: #{i}"
        end
    end
end