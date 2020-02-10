require "../src/wiki-api"

# This is for getting the Picture of the day

protocol = "https"

# Format local time to proper time the API accepts, plus convert to string
# The date needs to be in yyyy-mm-dd, ISO format
date_y = Time.local.year.to_s
date_m = Time.local.month.to_s
if date_m.size < 2
  date_m = "0" + date_m
end
date_d = Time.local.day.to_s
if date_d.size < 2
  date_d = "0" + date_d
end
potd_date  =  date_y + "-" +date_m + "-" +date_d

# Returns the html for POTD
# All that's needed is the protocol and date, both in string format
puts Wiki::POTD.html(protocol, potd_date)