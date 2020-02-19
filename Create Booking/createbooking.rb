require 'faraday'

conn = Faraday.new(:url => 'https://restful-booker.herokuapp.com')

conn.post do |req|
  req.url '/booking'
  req.headers['Content-Type'] = 'application/json'
  req.body = '{"firstname" : "Budi",
    "lastname" : "Setiawan",
    "totalprice" : 1000,
    "depositpaid" : true,
    "bookingdates" : {
      "checkin" : "2020-02-01",
      "checkout" : "2020-02-03"
    },
    "additionalneeds" : "Lunch"}'

end
