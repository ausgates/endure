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
git checkout unstable
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

| difficulty                                     | information
| -----------------------------------------------|:-------------------------:
| easy                                           | start with 200% health
| medium                                         | start with 100% health
| hard                                           | start with 50% health


to do
-----

- completely re-code game so player can type in what they want-
  for example
  ```
  What would you like to do?
  >> eat yogurt

  Player josh ate 1 yogurt
  Player josh is now 110% hungry
  ```

- create method for
  - ~~displaying player's current inventory~~
  - displaying player's friends
  - displaying player's enemies

- ~~when user dies, print player stats~~
