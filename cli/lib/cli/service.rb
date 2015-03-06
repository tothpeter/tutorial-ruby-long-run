class Service
  def request url, method = :get, *args
    HTTParty.send method, "#{host}#{url}", *args
  end
  
  private 
  
  def host
    "http://localhost:3000"
  end
end