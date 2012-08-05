# git-dropbox

* [Homepage](https://github.com/lukasz-kaniowski/git-dropbox#readme)
* [Issues](https://github.com/lukasz-kaniowski/git-dropbox/issues)
* [Documentation](http://rubydoc.info/gems/git-dropbox/frames)
* [Email](mailto:lukasz.kaniowski at gmail.com)

## Description

Gem mirrors your git repositorys in dropbox folder. It's based on shell script from this [repository](https://github.com/agnoster/git-dropbox)

## Features

1. Synchronizes single repo to dropbox
2. Synchronizes all knows repos to dropbox
3. Lists all knows repos
4. Saves configuration in your dropbox folder `~/Dropbox/git/git-dropbox.yml`

## Examples

### Synchronize single repo

    $ git dropbox init
    $ cd to your project
    $ git dropbox sync

### List synchronized repos

    $ git dropbox list

### Synchronize all known repos

    $ git dropbox sync --all

## Install

    $ gem install git-dropbox

## Copyright

Copyright (c) 2012 Lukasz Kaniowski

See LICENSE.txt for details.
