# iCal Creator

Generates iCal/.ics files based on query string data. Sets proper content-type and headers for forcing download. Compatible with iCal (iPhone), Outlook, etc..

## Usage

Pass in the following query strings to generate a proper .ics file (examples inline):

`start`/`end` = YEAR-MONTH-DAY HOUR:MINUTES:SECONDS

`location` = ADDRESS

`summary` = STRING

`description` = STRING

`organizer` = STRING

Example:

[http://ical-creator.herokuapp.com/?start=2014-02-06&end=2014-02-07&location=1250%20E%20Burnside%20St,%20Portland%20OR](http://ical-creator.herokuapp.com/?start=2014-02-06&end=2014-02-07&location=1250%20E%20Burnside%20St,%20Portland%20OR)

*Make sure to encode any data before passing it through, especially if it is going to contain any special characters.*

## TODO

- Add proper timezone support
- Custom filenames
- More iCal fields
- Long-term hosting/support

## Author

Josh Ellington - josh@roundhouseagency.com