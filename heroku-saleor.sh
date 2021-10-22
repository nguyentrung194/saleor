#!/bin/bash

heroku git:remote -a 'store-cong-doi'
heroku buildpacks:set heroku/nodejs
heroku buildpacks:add heroku/python
heroku addons:create heroku-postgresql:hobby-dev
heroku addons:create heroku-redis:hobby-dev
heroku addons:create sendgrid:starter
heroku config:set ALLOWED_HOSTS='store-cong-doi.web.app'
heroku config:set NODE_MODULES_CACHE=false
heroku config:set NPM_CONFIG_PRODUCTION=false
heroku config:set SECRET_KEY='4DAB6AEDF9C4AF97ECFC17A39D2C6'