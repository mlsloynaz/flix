# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
   Ruby 3.0.5

  Issues with the installation

  * check that exist

       `/opt/homebrew/opt/chruby/share/chruby/chruby.sh
       /opt/homebrew/opt/chruby/share/chruby/auto.sh`

  * and if they do add these 2 lines to the ~/.zshrc

    `source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
    source /opt/homebrew/opt/chruby/share/chruby/auto.sh`

  * after that you should be able to run chruby 3.0.5 and the bundle install

* Database creation
* Database initialization

Note :  all related to css and layouts is a WIP.

## Notes

* controllers name are plural
* models names are singular
* name of the table in db is plural

### Some commands

    rails generate controller <SomeName>
    rail g model

    rails -T   -> to see all task provided for rails
    rails db:migrate -> runs migrations
    rails db:migrate:status  - > up ? down

### Models crud, CLI

    ModelName.create  create and save , ModelName.new needs ModelName.save
    ModelName.find_by(name: maria) mn.find(id) mn.all()
    MN.update -> update a hash and save
    MN.create(name: maria proce:10)
    object.destroy | MN.destroy(id)
    summary: model:video2

### Migration

* rails generate migration  AddFileldsToStudents title:string start_at:datetime
* if we name the migration at the end ToStudents  -> apply the changes to the Students table of the database , Ex: AddFileldsToStudents
* rails db:migrate , applies the migration

### Others

- numbers : 225M -> 225_000_000 , 225_000_000 is a Ruby-specific representation of the same number:
    right : Movie.where("total_gross < ?", 225_000_000)
    wrong : Movie.where("total_gross < 225_000_000")
    right: Movie.where("total_gross < 225000000")

? - do you pass the whole instance variable to the helper, or a field
? - how can I hover and see the signature of a method

## Path/  Routes

- In practice you want to use the _path variant in view templates and the_url variant in controllers as redirects
* Test routes in console

`>> app.movies_path
=> "/movies"`
* link Show page
`<%= link_to(book.title, book_path(book)) %> or <%= link_to(book.title, book) %>`

- You don't have to call the route helper method. Given the book object, the link_to method assumes that it should call the _path method for you. But remember, this shortcut only works for generating links to an object's show page.

- link_to set by default the verb to GET , in case multiple verbs share the same path , we have to specify the verb in the link_to
`<%=link_to "Delete", @event, class: "button", data: {turbo_method: :delete, turbo_confirm: "Really?"} %>`

* @event in the link_to is a shorcut for event_path(@event)

- because we change the method on the link the next time we have to reverse the method,
`redirect_to event_url, status: see_other`

??? see why is see_other
??? why on the redirect_to in the controller we should use the url versus the path, I guess because it comes not from from the server versus the browser?
???how to code format

### Views
?- Where to place a helper used in several views

### Sscaffold

test all structure or create a fast whole module,  with
* execute `rails g scaffold YourScaffolds mystring:string`
* navigate to <http://localhost:3000/your_scaffolds>


