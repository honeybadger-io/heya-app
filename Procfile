web: bundle exec puma start -p $PORT
sidekiq: bundle exec sidekiq -c 5 -v -q default -q mailers
