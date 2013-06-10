Not production ready! Check the TODOS.md if you wanna help.

## Green money

Ruby on Rails 4.x Time Banking (LETS) software. Lightweight alternative for [Cyclos](http://www.cyclos.org) (Cyclos 4 is closed source, property software now).

**Planned features:**

* Out-of-box [Ripple gateway](https://ripple.com) support (trading over communities)
* Easy and free heroku deployment
* Cyclos 3 import
* Mobile payment support
* Consistent API

**Heroku deploy instructions**

* clone the repo `git clone git://github.com/green-money/gm.git && cd gm`
* edit the config/config.yml file
* Create new heroku app `heroku create`
* Generate new secret key for the app `rake secret`
* Add the secret key `heroku config:add SECRET_TOKEN='generated_key'`
* `heroku run rake db:migrate`
* `heroku run rake db:seeds`
* Add email support `heroku addons:add mandrill:starter`

**Donation**

Donations are welcone to [1ErcSeqE6pdhAW67rgTgy2EJo1uMCZjiWn](bitcoin:1ErcSeqE6pdhAW67rgTgy2EJo1uMCZjiWn) bitcoin address to support ongoing development of Green Money.