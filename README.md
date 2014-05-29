endure
=====
a cliché survival text-based adventure game

~~i might move `endure.rb` into the root project or i might not~~

usage
-----

you'll need [git](http://git-scm.com/) to clone the repo
and [ruby](https://www.ruby-lang.org/en/) to play the game

```bash
git clone https://github.com/trommel/endure
cd endure/
gem install rake # if you don't already have it
rake
cd app/bin/lib/
```

now you can play the game

```bash
ruby main.rb [ player name ] [ difficulty level ]
```

..or just check endure's version

```bash
ruby main.rb -v
```

difficulties
-------------

| difficulty | health | hunger | sanity |
|------------|--------|--------|--------|
| easy       | 200%   | 150    | 175    |
| medium     | 100    | 100    | 100    |
| hard       | 50%    | 40     | 40     |


to do
-----

- [x] completely re-code endure so player can type in what they want-
  for example
  ```
  What would you like to do?
  >> eat yogurt

  Player josh ate 1 yogurt
  Player josh is now 110% hungry
  ```

- [ ] create method for
- [x] when user dies, print player stats
  - [x] displaying player's current inventory
  - [ ] displaying player's friends
  - [ ] displaying player's enemies

- [ ] fix
  - [ ] sane levels so the highest sane rate you can be is 100%

- [ ] make
  - [ ] arguments with spaces work as one argument (eat cooked noodles)
  - [ ] way of saving game (preferably through JSON file, but that can be easily edited
