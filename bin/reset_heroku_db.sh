heroku restart
heroku pg:reset DATABASE
heroku run rake db:migrate
heroku run rake db:seed
