class Application
  @@items = []
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      requested_item = req.params["item"]
      if item = @@items
    else
      resp.status = 404
    end
  end
  
end