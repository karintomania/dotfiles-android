# My Dot Files for android

## How to setup
Install stow:
```
$ pkg install stow
```

Clone this repo:
```
$ cd ~ // must be cloned on the home dir
$ git clone git@github.com:karintomania/dotfiles-android.git
```

Run stow:
```
$ cd dotfiles-android
$ stow .
```

## Resolve conflict
```
stow --adopt .
```

## How it works
stow creates symlink in the home file, keeping the folder structure inside this repo.
https://www.youtube.com/watch?v=y6XCebnB9gs&ab_channel=DreamsofAutonomy
