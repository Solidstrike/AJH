Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.



### Development with docker-compose

`docker-compose up` will up services and make http://localhost:3000 available  
Running tests with `docker-compose exec test rspec|rails test` or `docker-compose run test rspec` if you didn't run `docker-compose up` command yet.  
Sh into current running docker container `docker-compose exec app /bin/sh` then you able to run default rails command like `rails g migration AddSome ...`
Or do it directly like  `docker-compose exec app rails c`


### Email for development
If you use Docker-compose it wlll already setup  
To able read sended email in development without docker install https://mailcatcher.me run & open http://localhost:1080  
For production set server env varibles SMTP_SERVER, SMTP_PORT, DOMAIN, SMTP_EMAIL, SMTP_PASSSWORD


### Rails Admin panel
http://localhost:3000/admin sign in with defaults at seed.rb mail@example.com/password
