# _Mario's Food Store_

#### By _**Gabe Nielsen**_

#### _This is the groundwork for a rock climbing api that stores climing areas and the routes inside them._

## Technologies Used

- _Ruby 2.6.10_
- _Rails 5.2.8_
- _SQL_
- _Postman_

## Description

_This is a Ruby on Rails made API meant for rock climbing. On it's outer layer is parks. The parks have a name and location. These are general areas where many routes are clumped together. The parks hold a trad_climbs and a sport_climbs object. These both have various climbs in their respective climbing classes. They require a name and grade, with options for height in feet and total pitches._

## Setup/Installation Requirements

- _Clone this repository_
- _Make sure that your Ruby version is 2.6.X, and Rails version is 5.2.X_
- _Navigate to the root directory in the terminal_
- _Run `bundle install` to install the necessary gems_
- _Run `rake db:create db:migrate db:seed`_
- _If you would like to see the test results, run `rspec`_
- _Run `rails s`_
- _In Postman enter `http://localhost:3000/parks`_

## Endpoints

Each object has full CRUD functionality. Here are the endpoints:

- _To (show all parks / add) a park: `(GET / POST) /parks`_
- _To (show / update / delete) a specific park: `(GET / PATCH / DELETE) /parks/:id`_
- _To (show all sport climbs in a park / add a sport climb to a park): `(GET / POST) /parks/:park_id/sport_climbs`_
- _To (show all trad climbs in a park / add a trad climb to a park): `(GET / POST) /parks/:park_id/trad_climbs`_

#### Note for below:

The id's of the climbs are what really matters here. You can have park A's id, but if you enter a x_climb id that belongs in park B, it will still take you to whatever x_climb id is.

- _To (show / update / delete) a specific sport climb: `(GET / PATCH / DELETE) /parks/:park_id/sport_climbs/:id`_
- _To (show / update / delete) a specific trad climb: `(GET / PATCH / DELETE) /parks/:park_id/trad_climbs/:id`_

## Known Issues

- _None that I know of as of this commit_

### Goals

- _Sorting climbs by grade_
- _Search function with parameters_
- _Add links to the park / route on Mountainproject.com_
- _Valuable notes for the park / route_

## License

Copyright (c) _2022_ _Gabe Nielsen_
