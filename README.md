endure
=====

a cliché survival text-based adventure game

~~i might move `endure.rb` into the root project or i might not~~

usage
=====

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
ruby endure.rb [ player name ] [ difficulty level ]
```

..or just check endure's version

```bash
ruby endure.rb -v
```

## difficulties


| difficulty                                     | information 
| -----------------------------------------------|:-------------------------:
| easy                                           | start with 10 lives
| medium                                         | start with 5 lives
| hard                                           | start with 3 lives
