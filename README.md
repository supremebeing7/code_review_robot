Code Review Robot
==

The Code Review Robot pulls Github repository URLs from a page, downloads or parses the repo looking for certain requirements, records those items, then fires up a Watir browser to fill in a form for each user/repo.

### Goals / Components:
* Get list of all repo URLs
  * If API access to epicenter, GET index
  * If no API access, use Mechanize or Watir or Nokogiri to scrape the page

* Parse repo URL for username and repo name
  * Store username (where(username: username).first_or_create)
  * Store repo name (user has_many: :repos)
  * repo has reviewed? boolean, defaults to false

* Iterate through URLs

* GET repo from Github API

* Use Nokogiri to check for completion of all pieces
  * Record to database which pieces are missing

* Handle result
  * Use Watir or Mechanize to fill in evaluation for each student
  * POST issues on each repo? or email self with some kind of report?

### Contributing

This app currently uses Rails 5.0.0rc1. You may need to run `gem install rails -v 5.0.0rc1` before the rest of these steps.

* Fork it
* Clone it
* `bundle install`
* `rake db:create`
* `rake db:migrate`