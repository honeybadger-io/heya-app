class Rack::Attack
  Rack::Attack.cache.store = ActiveSupport::Cache::RedisCacheStore.new(url: ENV[ENV["REDIS_PROVIDER"]] || ENV["REDIS_URL"], expires_in: 3.days)

  [[3, 1.minute], [5, 1.hour], [10, 1.day]].each do |limit, period|
    # Limit access to sign up
    throttle("users#create_per_#{period}", limit: limit, period: period) do |req|
      if req.path.match(%r{/users/?\Z}) && req.post?
        req.ip + ":" + Digest::SHA1.hexdigest(req.env["HTTP_USER_AGENT"].to_s)
      end
    end
  end
end
