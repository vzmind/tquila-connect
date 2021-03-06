README

This README would normally document whatever steps are necessary to get the
application up and running.

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/vzmind/tquila-connect/tree/STEP5)


Things you may want to cover:

*Step 0*

Configure Heroku addons:

- heroku addons:add herokuconnect:test --app temp-connect
- heroku addons:add heroku-postgresql:standard-yanari --app temp-connect
- heroku pg:wait --app temp-connect

Setup heroku Connect
heroku addons:open herokuconnect:test --app temp-connect
- Select the DB to be used
- Give a name to the schema
- Link the ORG
- Map objects and fields


*Step 1*
```bash
Bundle install
```

Add the Article Model:
```bash

rails g scaffold article title:string description:string
```

Run migrations:
```bash
rake db:migrate
```

Launch Rails:
```bash
rails s
```

Access the articles index page:
http://127.0.0.1:3000/articles

*Step 2*

Install Bootstrap (all thos commands have already be run on this commit)

Add this to the Gemfile:
```bash
gem "twitter-bootstrap-rails"
```

Run the install command
```bash
rails generate bootstrap:install static
```

Add a default layout
```bash
rails g bootstrap:layout application fluid
```

Modify the Layout to give access to Objects on top and New Article on the left

*Step 3*

Create a Contact Model connected to Salesforce

Add the Contact Model
```bash
rails g scaffold Contact firstname:string lastname:string email:string
```

Run migration (only locally as heroku Connect will create that Table remotely)
```bash
rake db:migrate
```

Update the Model
```ruby
self.table_name = "salesforce.contact"
```

Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
