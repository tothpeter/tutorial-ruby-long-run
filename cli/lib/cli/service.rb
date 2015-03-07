class Service
  def request url, method = :get, *args
    HTTParty.send method, "#{host}#{url}", *args
  end
  
  private 
  
  def host
    "http://#{Cli::Config.host}"
  end
end