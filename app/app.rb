require 'rubygems'
require 'sinatra'
require './config/init'

# Before any route is run
before do
  @path = request.env['SCRIPT_NAME']
  content_type 'text/calendar', :charset => 'utf-8'
  attachment('event.ics')
end

# Routes
match '/' do
  start_date = DateTime.parse(params[:start])
  end_date = DateTime.parse(params[:end])
  summary = params[:summary]
  description = params[:description]
  organizer = params[:organizer]
  location = params[:location]

  puts start_date
  puts end_date

  cal = Calendar.new
  
  tzid = params[:timezone]
  tz = TZInfo::Timezone.get tzid
  timezone = tz.ical_timezone start_date
  cal.add timezone

  cal.event do
    dtstart start_date
    dtend end_date
    summary summary
    description description
    organizer organizer
    location location
    klass "PRIVATE"
  end

  cal.publish
  cal.to_ical
end