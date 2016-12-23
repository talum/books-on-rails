# Books on Rails: A Review

Imagine you've just landed your first job as a Rails developer and you're handed a list of user stories that you're supposed to implement. 

* As a user, I should have a database full of authors and books.
* As a user, I should be able to view a list of all the authors and books. 
* As a user, I should be able to click on each author or book and see a page with more information about the book or author. 
* As a user, I should be able to edit each book.
* As a user, I should be able to update each book.
* As a user, I should be able to delete a book. 

Yikes. Sounds like a lot of work. But don't worry -- we'll tackle it together. 

In a future lesson, we can cover how to associate a new author with a book, but we'll punt on that for now. You can imagine we'd also need to be able to edit an author and add genres to each book.

### Domain
Books have many authors.
Authors have many books.

For later: 
Books belong to a genre.
Genres have many books. 

### Getting Started
1. Clone down the master branch, which contains starter code.
*If you get stuck at any point, you can check out a different branch (phase-2, phase-3, phase-4).
*We'll be building up to the `final` branch. 

2. `bundle install`
3. `rake db:migrate`
4. Write the code.