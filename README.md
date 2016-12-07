# Minimal Rails Environment Installation
========================================

The purpose of this step by step tutorial is to provide a very simple example of configuring a minimal Rails environment.

# Installation Steps

- install Xcode from Mac App Store

[Download Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12#)

- install the Xcode

  $ xcode-select --install

- install MacPorts for OS X

  [Download MacPorts](https://distfiles.macports.org/MacPorts/MacPorts-2.3.4-10.11-ElCapitan.pkg)

- open Disk Utility, select MacIntosh HD, click Repair Disk Permissions

- open the Terminal.app

- from the Terminal.app, install command line tools

  $ xcode-select --install

- change directory to the installation folder

  $ cd ~/Downloads/macosx

- set the environment profile

  $ cp sample.profile $HOME/.profile

  $ . ~/.profile

  Note:  If you see the following message,

  **-bash: rbenv: command not found**

  please continue to the next step.

- set the Git completion

  $ cp sample.git-completion.sh $HOME/.git-completion.sh

- install required ports from MacPorts

  $ chmod +x install-ports.sh

  $ ./install-ports.sh

- install RBenv

  $ git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

- install all of the approved plugins RBenv plugins

  $ chmod +x install-rbenv-plugins.sh

  $ ./install-rbenv-plugins.sh

- install Ruby 2.3.1

  $ rbenv install 2.3.1

  $ rbenv global 2.3.1

- install Ruby on Rails web development framework

  $ gem install bundler

  $ gem install rails

  $ rbenv rehash

- install Heroku Toolbelt

  [Download Heroku Toolbelt](https://toolbelt.heroku.com)

- open Disk Utility, select MacIntosh HD, click Repair Disk Permissions

- set the terminal

  $ cp sample.terminal $HOME/.

- from the terminal menu, Shell -> Import, select sample.terminal file

  - Terminal -> Preferences -> Settings, click the 'sample' profile on the left, click Default

- create a Github.com account

  Note:  Skip this step if you already have an account.

- set the Git configuration  

  $ cp sample.gitconfig ~/.gitconfig

  Note:  Replace < TEXT > with your contact information.  For example,

  replace:

	  name = <your firstname lastname>
	  email = <your e-mail address>

  with full name and e-mail

    e.g.

    name = John Doe
    email = john.doe@example.com

- set up PostgreSQL Server

  $ sudo mkdir -p /opt/local/var/db/postgresql96/defaultdb
  $ sudo chown postgres:postgres /opt/local/var/db/postgresql96/defaultdb
  $ sudo su postgres -c '/opt/local/lib/postgresql96/bin/initdb -D /opt/local/var/db/postgresql96/defaultdb'

$ = stuff that you type in the terminal

## Support

Bug reports and feature requests can be filed for the <add project here> project here:

* [File Bug Reports and Features](https://github.com/conradwt/<add project here>/issues)

## Contact

Follow Conrad Taylor on Twitter ([@conradwt](https://twitter.com/conradwt))

## Creator

- [Conrad Taylor](http://github.com/conradwt) ([@conradwt](https://twitter.com/conradwt))

## License

This repository is released under the [MIT License](http://www.opensource.org/licenses/MIT).

## Copyright

&copy; Copyright 2014 - 2016 Conrad Taylor. All Rights Reserved.
