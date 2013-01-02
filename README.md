Election Counter [![Dependency Status](https://gemnasium.com/moregeek/ElectionCounter.png)](https://gemnasium.com/moregeek/ElectionCounter) [![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/moregeek/ElectionCounter)
================

Developer Pre Release do not use in production!

Contribute
----------
[todo]

Licence 
-------
[todo]

Installing development Environment

* I recommand using Ruby Version Manager from - rvm.io

Installation
------------

Cloneingn & Install required software:

1. `https://github.com/moregeek/ElectionCounter election-counter`
2. `cd electoin-counter/`
3. `echo 'rvm use 1.9.3@election-counter --create >> .rvmrc'`
4. `cd .. & cd - # accept rvm question with "yes"`
5. `gem install bundler`
6. `bundle install`

Setting up APP and initializing with data

7. `bundle exec rake db:migrate`
8. `bundle exec rake db:seed`

Start the Server

User Access:

    http://127.0.0.1/

Admin Access:

    http://127.0.0.1/admin/

**Username:**   `admin@example.com`
**Password:**   `password`

Change this in production Environment!

Note:

User have to register themself on the entry page and a Admin has to approve them.

Deployment to Heroku
--------------------

To deploy this app to Heroku follow the steps listed on the following link:
https://toolbelt.heroku.com/

TODO
====

* Add Mailers
* Add Tests & improve tests
* Add fixtures
* cleanup files
* fix some smaller bugs
