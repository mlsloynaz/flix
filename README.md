# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

controllers name are plural 
models names are singular
name of the table in db is plural

rails generate controller SomeName
rail g model 

rails -T   -> to see all task provided for rails 
rails db:migrate -> runs migrations 
rails db:migrate:status  - > up ? down
ModelName.create  create and save , ModelName.new needs ModelName.save
ModelName.find_by(name: maria) mn.find(id) mn.all() 
MN.update -> update a hash and save 
MN.create(name: maria proce:10)
object.destroy | MN.destroy(id)
resumen: model:video2
Migration 
- rails generate migration  AddFileldsToStudents title:string start_at:datetime
- if we name the migration at the end ToStudents  -> apply the changes to the Students table of the database , Ex: AddFileldsToStudents
- rails db:migrate , applies the migration 
numbers : 225M -> 225_000_000
? - do you p[ass the whole instance variable to the helper, or a field
? - how can I hover and see the signature of a method

- In practice you want to use the _path variant in view templates and the _url variant in controllers as redirects 

- Test routes in console 

>> app.movies_path
=> "/movies"
- link Show page
<%= link_to(book.title, book_path(book)) %> or <%= link_to(book.title, book) %>

You don't have to call the route helper method. Given the book object, the link_to method assumes that it should call the _path method for you. But remember, this shortcut only works for generating links to an object's show page.

?- Where to place a helper used in several views

link_to set by default the verb to GET , in case multiple verbs share the same path , we have to specify the verb in the link_to 
<%=link_to "Delete", @event, class: "button", data: {turbo_method: :delete, turbo_confirm: "Really?"} %>
- @event in the link_to is a shorcut for event_path(@event)
-because we change the method on the link the next time we have to reverse the method, 
redirect_to event_url, status: see_other
??? see why is see_other
?? why on the redirect_to in the controller we should use the url versus the path, I guess because it comes not from from the server versus the browser? 
kill server :  lsof -wni tcp:3000 kill -9  the returned port