# Modeling Relationships in Rails

### Objectives
*After this lesson, students will be able to:*

- Build a Rails application that uses a many-to-many relationship

### Preparation
*Before this lesson, students should already be able to:*

- Create models that inherit from ActiveRecord
- Use common ActiveRecord associations
- Explain and generate migrations
- Describe a relational database


## User Stories

### Sprint 0
Create a new rails app called ``movie_almanac``. Remember to use a Postgres database and you can choose whether to include 
tests or not.

### Sprint 1
Add a many-to-many relation between actors and movies. 

For this app, here's the attributes we're tracking:
  * `Actor`: first_name, last_name
  * `Movie`: title, description, year

You can use either the ``has_many_and_belongs_to_many`` or a pair of ``has_many :through`` relationships to create this

Basic hint. You should have at least two models and three migrations

Once you've created your models. This seed file should work:

```ruby
Actor.destroy_all
Movie.destroy_all

morgan = Actor.create first_name: 'Morgan', last_name: 'Freeman'
jim = Actor.create first_name: 'Jim', last_name: 'Carrey'
kevin = Actor.create first_name: 

planes = Movie.create title: 'Planes, Trains, and Automobiles', description: 'Comedy', year: 1987
spider = Movie.create title: 'Along came a spider', description: 'Thriller', year: 2001
bruce = Movie.create title: 'Bruce Almighty', description: 'Comedy', year: 2003
cable = Movie.create title: 'Cable Guy', description: 'Drama', year: 1996
apollo_13 = Movie.create title: 'Apollo 13', description: 'Drama', year: 1995

kevin.movies << planes
morgan.movies << spider
morgan.movies << bruce
jim.movies << bruce
jim.movies << cable
kevin.movies << apollo_13
```

### Sprint 3

Create two routes ``movies`` and ``actors``. In the movies route, include all of the movies all with the first and last name
of any actor who was in the movie. For the actors route include all of the actors and list each movie the actor was in.

### Sprint Bonus

* Implement show for actors and movies
* Enable a user to use add a new actor to a movie. Enable a user to add a new movie to an actor. Think about how you would use 
other imput types, ``<selection>`` cough, cough, to help maintain the data consitence of this action.

## Useful Docs

* <a href="http://guides.rubyonrails.org/association_basics.html" target="_blank">Associations Rails Guide</a>
* <a href="http://edgeguides.rubyonrails.org/active_record_migrations.html" target="_blank">Migrations Rails Guide</a>


## Licensing
All content is licensed under a CC­BY­NC­SA 4.0 license.
All software code is licensed under GNU GPLv3. For commercial use or alternative licensing, please contact legal@ga.co.