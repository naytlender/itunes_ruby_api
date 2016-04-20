# Ruby rake application for itunes Api

gem install bundler
gem install mongoid
gem install sinatra

bundle install

Rake commands:
  rake find[name] - find and save artists to database by name
  rake show_artist[name] - show artist by name
  rake albums[artist_itunes_id] - find and save albums to database by itunes_id
  rake show_album[album_name] - show album by name
  rake delete - delete all artists and albums
  rake show_all - show all artists and albums

Run: 'ruby app.rb' to start server
Visit: localhost:4567

API:
  all artists in database - localhost:4567/artists/
  particular artist - localhost:4567/artists/:itunes_id
  albums of particular artist - localhost:4567/artists/:itunes_id/albums
