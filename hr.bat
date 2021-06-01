call mvn -B -s settings.xml -SkipTests=true clean package
call java -Spring.profiles.active="data,heroku" -DATABASE_URL="postgres://user:password@localhost:5432/topaz" -jar target/dependency/webapp-runner.jar target/*.war
