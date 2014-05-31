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
| easy       | 200%   | 150    | 100    |
| medium     | 100%   | 100    | 80     |
| hard       | 50%    | 40     | 50     |

license
-------

don't steal this game or its code. play it for fun.

©josh trommel 2014
