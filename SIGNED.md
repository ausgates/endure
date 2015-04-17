##### Signed by https://keybase.io/josht
```
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAABAgAGBQJTn3QuAAoJEEtwXX0bMP+TY2wH/R9r5Y7Ulmrr2ChACYlBrPUk
gqpCPFDbUgSjOnsX4iQuZo8prJeApYvWFMp/4xn4qbx4lTI3X+8s+t+mRtLy1uHF
3wC7iEkDcR0iK+i/Zp5QNKsWC4CYDRdpMifYQl3AsUzT+7EK1VfghUSiciDsUdkh
sjJfKHXj2ho6Oo9D+2mX7L9V4CKaxoI747v7gRmw08vSiIauITjqaIGd4qSYBQdR
t2H9SYbb090naVHwloj50Dk/HD6U4AVQ0SxNmNxlZnGw8hvEUVrZm6NeQaqympAs
jnjOQKiA+nItcnh6GtOkpcSaX0PzDS59Soib26ouvrQEqtXT5eIE+mssmZ4sorY=
=KpQj
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size  exec  file                       contents                                                        
            ./                                                                                         
683           .gitignore               473c107c395adc40e1841b5c356429a5d31f2337f8de3542b2651dcc790116ca
688           CONTRIBUTORS.md          11b015c7c374216aa2190758ee95176f7591f39b29b35fd1c2be37a98b02b329
62            Gemfile                  3c51db49acbd9dae047611ff26d1142327e4f5a83051cc8a9a018e737a46ac06
275           IDEAS.md                 82887f0d1ad13e812257e6140848d1c6dd5082bd9f25a496a08fc51c292c5f56
808           README.md                b427388ae5747abe6407559b5ad50610d074991c9a051789bfab734c10e7b171
82            Rakefile                 90e866a3c6a6d98b9b09a5dc668da19f80b26f6aea28c267485121b760b75a5e
              app/                                                                                     
                bin/                                                                                   
                  lib/                                                                                 
                    endure/                                                                            
3159                  game.rb          ee9043e9ccae3d4f462ef708d5a4aa149992900b9a1672cdc67ba20d2efbb91e
795                   methods.rb       f65613c404270691247cbcb423ef477a023f719b23f9ff0c165961ea9618a0bf
5788                  part_one.rb      e99f76e30ea0344233dbef174aaccbef1d56ddfa288d69ea743ceeacf3ef85f3
5916                  player.rb        8b5e92555370150fe749089f655d4d65b995d5be650fbeb09debc26679cf4e41
101                   requirements.rb  36cd394d1fac72da2ac70a940296b33179baac51035524402866755e170f0b13
82                    version.rb       2af9e9a90ef841f39f9d5067baa4fba7f51240fc1ac965632e6417df81d008ef
1201  x             main.rb            f26423658ff19a02ac8286c8cd7ab17de3f1625169a3644d8a4d62c1c68bc832
```

#### Ignore

```
/SIGNED.md
```

#### Presets

```
git      # ignore .git and anything as described by .gitignore files
dropbox  # ignore .dropbox-cache and other Dropbox-related files    
kb       # ignore anything as described by .kbignore files          
```

<!-- summarize version = 0.0.9 -->

### End signed statement

<hr>

#### Notes

With keybase you can sign any directory's contents, whether it's a git repo,
source code distribution, or a personal documents folder. It aims to replace the drudgery of:

  1. comparing a zipped file to a detached statement
  2. downloading a public key
  3. confirming it is in fact the author's by reviewing public statements they've made, using it

All in one simple command:

```bash
keybase dir verify
```

There are lots of options, including assertions for automating your checks.

For more info, check out https://keybase.io/docs/command_line/code_signing