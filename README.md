endure
=====
a cliché survival text-based adventure game

usage
-----

you'll need [git](http://git-scm.com/) to clone the repo
and [ruby](https://www.ruby-lang.org/en/) to play the game

```bash
git clone https://github.com/trommel/endure
cd endure/
gem install rake # if you don't already have it
rake
cd lib/
```

now you can play the game

```bash
ruby endure.rb player_name difficulty_level
```

..or just check endure's version

```bash
ruby endure.rb -v
```

difficulties
-------------

| difficulty | health | hunger | sanity |
|------------|--------|--------|--------|
| easy       | 100%   | 100    | 100    |
| medium     | 50%    | 50     | 50     |
| hard       | 25%    | 25     | 25     |

license
-------

don't steal this game or its code. play it for fun.

©josh trommel 2015
