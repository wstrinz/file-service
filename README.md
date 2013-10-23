# Boxroom

[![Build Status](https://travis-ci.org/wstrinz/file-service.png?branch=master)](https://travis-ci.org/wstrinz/file-service)
[![Code Climate](https://codeclimate.com/github/mischa78/boxroom.png)](https://codeclimate.com/github/mischa78/boxroom)

Boxroom is a Rails application that aims to be a simple interface for managing and
sharing files in a web browser. It lets users create folders and upload, download
and share files. Admins can manage users, groups and permissions.

Website:
http://boxroomapp.com/

Bug reports and feature requests:
https://github.com/mischa78/boxroom/issues/new


### This fork

Just adding some things that may not be within the scope of the main project.

Currently:

 * Public Folders/Files
 * Content type in http headers

Requirements
------------
The requirements for running Boxroom are:

 * Ruby 2.0.0 or 1.9.3
 * Rails 4.0.0
 * A database (e.g. MySQL or SQLite)


Installation
------------
Follow these steps:

 1. Extract, checkout or clone Boxroom into a new folder
 2. `cd` into the new folder
 3. Install necessary gems: `$ bundle install`
 4. Run the install script: `$ bundle exec rake install`
 5. Start the server: `$ bundle exec rails server`
 6. Point your browser to http://localhost:3000/
 7. Enjoy!


Upgrading to Rails 4
--------------------
Follow these steps:

 1. Make a backup of your current `boxroom` folder (e.g. by renaming it to `boxroom.bak`)
 2. Extract, checkout or clone the Rails 4 version of Boxroom into a new folder
 3. Copy the `uploads` folder from your backed up version to the new version
 4. Copy `config/database.yml` from back up to the new version
 5. When using SQLite: copy `db/development.sqlite3` and/or `db/production.sqlite3` from back up to the new version
 6. Install necessary gems: `$ bundle install`
 7. Run the install script: `$ bundle exec rake install`

If you run into difficulties, please get in touch via the [issue tracker](https://github.com/mischa78/boxroom/issues/new).


Mail settings
-------------
Boxroom sends email on the following occasions:

 * When inviting new users
 * On a reset password request
 * When a file is shared

For the application to be able to send email, a few things have to be set up. Depending on the environment
you're working in, either open `config/environments/development.rb` or `config/environments/production.rb`.
Uncomment the following lines and fill in the correct settings of your mail server:

```ruby
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  :address => 'mailhost',
  :port => 587,
  :user_name => 'user_name',
  :password => 'password',
  :authentication => 'plain'
}
```

Also uncomment the following and replace `localhost:3000` with the host name the app will be running under:

```ruby
config.action_mailer.default_url_options = { :host => 'localhost:3000' }
```

Lastly, you have to choose the address emails will be sent from. You can do
this by uncommenting and adjusting the following:

```ruby
ActionMailer::Base.default :from => 'Boxroom <yourname@yourdomain.com>'
```


Languages
---------
Thanks to [Rob Halff](https://github.com/rhalff), [Marcus Ilgner](https://github.com/milgner),
[Jessica Marcon](https://github.com/marcontwm) and [Arnaud Sellenet](https://github.com/demental)
Boxroom is now available in Dutch, German, Italian and French.

English is the default. To change the language, open `config/application.rb` and set the language you desire:

```ruby
config.i18n.default_locale = :en # English
config.i18n.default_locale = :nl # Dutch
config.i18n.default_locale = :de # German
config.i18n.default_locale = :it # Italian
config.i18n.default_locale = :fr # French
```

It would be great to have many more languages. I am waiting for your pull requests.


Credits
-------

Contributors:

 * [Jessica Marcon](https://github.com/marcontwm)
 * [Marcus Ilgner](https://github.com/milgner)
 * [Rob Halff](https://github.com/rhalff)
 * [Ryan Michael](https://github.com/kerinin/boxroom)
 * [Thomas Volkmar Worm](https://github.com/tvw/)
 * [Joan Marc Carbo](https://github.com/jmcarbo)
 * Stian Haklev
 * Craig Box
 * [Stephan Toggweiler](https://github.com/rheoli)
 * [Kale Worsley](https://github.com/kaleworsley)
 * [Arnaud Sellenet](https://github.com/demental)
 * [Patrick Fratczak](https://github.com/patfrat)

Donations:

 * [IT Partners](http://www.itpartners.co.nz/)
 * Matt Meshulam
 * April Colo
 * [Mohd Sofian](http://www.zulrafique.com.my/)

Icons:

 * [Yusuke Kamiyamane](http://p.yusukekamiyamane.com/)


License
-------
Copyright (c) 2006-2013 Mischa Berger

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the
Software, and to permit persons to whom the Software is furnished to do so, subject
to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
