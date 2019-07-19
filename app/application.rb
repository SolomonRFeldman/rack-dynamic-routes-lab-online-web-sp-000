class Application
  @@items = []
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      requested_item = req.params["item"]
      if item = @@items.find(requested_item)
        resp.status = 200
        resp.
    else
      resp.status = 404
    end
  end
  
end