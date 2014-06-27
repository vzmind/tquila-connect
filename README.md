README

This README would normally document whatever steps are necessary to get the
application up and running.

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
rails g scaffold Contact firstname:string lastname:string email:string
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
