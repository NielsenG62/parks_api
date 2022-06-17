# _Rock climbing API_

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

## Parameters

parks

- _park_name (string)_
- _park_city (string)_

climbs (automatically assigns a climb_type based on the endpoint you post in)

- _climb_name (string)_
- _climb_grade (string)_
- _climb_pitches (integer)_
- _climb_height_feet (integer)_
- _park_id (integer)_

## Endpoints

Each object has full CRUD functionality. Here are the endpoints:

- _To (show all parks / add) a park: `(GET / POST) /parks`_
- _To (show / update / delete) a specific park: `(GET / PATCH / DELETE) /parks/:id`_
- _To (show all sport climbs in a park / add a sport climb to a park): `(GET / POST) /parks/:park_id/sport_climbs`_
- _To (show all trad climbs in a park / add a trad climb to a park): `(GET / POST) /parks/:park_id/trad_climbs`_

#### Note for below:

The id's of the climbs are what really matters here. You are required to use the full route, but you could technically use any park_id or climb_type (though not advised, better to keep things clear for yourself). It will always find the climb by its id.

- _To (show / update / delete) a specific sport climb: `(GET / PATCH / DELETE) /parks/:park_id/sport_climbs/:id`_
- _To (show / update / delete) a specific trad climb: `(GET / PATCH / DELETE) /parks/:park_id/trad_climbs/:id`_

## Known Issues

- _The authentication branch is having some issues. Not sure where the issue lies. This branch is bug free to my knowledge_

### Goals

- _Sorting climbs by grade_
- _Adding multiple climbs at once_
- _Search function with parameters_
- _Add links to the park / route on Mountainproject.com_
- _Valuable notes for the park / route_

## License

Copyright (c) _2022_ _Gabe Nielsen_
