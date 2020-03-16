class Application

  def call(env)
    resp = Rack::Response.new

    

    if DateTime.now.strftime("%H:%M") >= ("12:00")
      resp.write "Good Afternoon!"
    elsif DateTime.now.strftime("%H:%M") < ("12:00")
      resp.write "Good Morning!"
    end

    resp.finish
  end

end