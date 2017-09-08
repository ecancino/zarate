threads_count = ENV.fetch("SINATRA_MAX_THREADS") { 5 }.to_i
threads threads_count, threads_count

port ENV.fetch("PORT") { 3000 }

environment ENV.fetch("RACK_ENV") { "production" }

workers ENV.fetch("WEB_CONCURRENCY") { 2 }
preload_app!

# The code in the `on_worker_boot` will be called if you are using
# clustered mode by specifying a number of `workers`. After each worker
# process is booted this block will be run, if you are using `preload_app!`
# option you will want to use this block to reconnect to any threads
# or connections that may have been created at application boot, Ruby
# cannot share connections between processes.
#
# on_worker_boot do
#   ActiveRecord::Base.establish_connection if defined?(ActiveRecord)
# end
