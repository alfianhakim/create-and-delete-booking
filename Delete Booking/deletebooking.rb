require 'faraday'

conn = Faraday.new(:url => 'https://restful-booker.herokuapp.com')

conn.delete do |req|
  req.url '/booking/19'
  req.headers['Content-Type'] = 'application/json'
  req.headers['Cookie'] = 'token=f8baa223df28166'
  req.headers['Authorization'] = 'Basic YWRtaW46cGFzc3dvcmQxMjM='

end
