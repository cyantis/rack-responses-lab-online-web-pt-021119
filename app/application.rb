class Application

  def call(env)
    r = Rack::Response.new
    time = Time.now

    if time.hour < 12
      r.write "Good Morning!"
    else
      r.write "Good Afternoon!"
    end

    r.finish
  end

end
