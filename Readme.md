# Ruby rake application for itunes Api
  Ruby version '2.2.3'

# Installation
```sh
git clone --recursive https://github.com/naytlender/itunes_ruby_api

gem install bundler
gem install mongoid
gem install sinatra
bundle install
```
### Rake commands:
  ```sh
  - rake find[name] - find and save artists to database by name
  - rake show_artist[name] - show artist by name
  - rake albums[artist_itunes_id] - find and save albums to database by itunes_id
  - rake show_album[album_name] - show album by name
  - rake delete - delete all artists and albums
  - rake show_all - show all artists and albums
  ```

> Run: 'ruby app.rb' to start server

> Visit: localhost:4567

### API:
  ```sh
    localhost:4567/artists/                      - all artists in database
    localhost:4567/artists/:itunes_id            - particular artist
    localhost:4567/artists/:itunes_id/albums     - albums of particular artist
  ```
### Example rake app usage
```sh
  rake find[offspring]
```
```sh
name: The Offspring, id: 2820865
name: Malicious Offspring, id: 794754367
name: The Offspring, id: 818848934
name: Bedlams Offspring, id: 322244490
name: Ensemble Offspring, id: 505523275
name: Offspring, id: 2820681
```
```sh
  rake show_artist['The Offspring']
```
```sh
itunes id: 2820865
```
```sh
  rake albums[2820865]
```
```sh
album: Rise and Fall, Rage and Grace
album: Smash
album: Greatest Hits
album: Americana
album: Days Go By
album: Ixnay on the Hombre
album: Conspiracy of One
album: Splinter
album: Ignition
album: Smash (Remastered)
album: The Offspring
album: Ignition (Remastered)
album: Days Go By
album: Splinter
album: Rise and Fall, Rage and Grace
album: Days Go By - Single
album: Summer Nationals - Single
album: Coming for You - Single
```
```sh
  rake show_album[Americana]
```
```sh
id: 5718801fbc54f411b6ae538a
```

### Client part

Open ember client folder (cd client/), then type:

```sh
npm install
bower install
ember build
```

Go back into app folder and run sinatra server:
```sh
ruby app.rb
```
