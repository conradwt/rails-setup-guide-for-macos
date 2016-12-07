Rails Setup Guide For macOS
=============================

The purpose of this step by step tutorial is to provide a very simple example of configuring a minimal Rails environment.

# Software Requirements

- macOS 10.12.1 or later

# Installation Steps

- install Xcode from Mac App Store

  [Download Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12#)

- install the Xcode

  $ xcode-select --install

- install MacPorts for OS X

  [Download MacPorts](https://github.com/macports/macports-base/releases/download/v2.3.5/MacPorts-2.3.5-10.12-Sierra.pkg)

- open Disk Utility, select MacIntosh HD, click Repair Disk Permissions

- open the Terminal.app

- from the Terminal.app, install command line tools

  $ xcode-select --install

- clone this repository

  $ git clone https://github.com/conradwt/rails-setup-guide-for-macos

- change directory to the cloned repository

  $ cd path/rails-setup-guide-for-macos

- remove existing

  $ mv ~/.bashrc ~/.bashrc.orig
  $ mv ~/.bash_login ~/.bash_login.orig
  $ mv ~/.bash_profile ~/.bash_profile.orig
  $ mv ~/.profile ~/.profile.orig
  $ mv ~/.zshrc ~/.zshrc.orig

  Note: Some or most of the above files may not exist.  Thus, if you get the
        following error it's OK:

        e.g.  mv: rename .bashrc to .bashrc.orig: No such file or directory

- configure the .profile

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

* [File Bug Reports and Features](https://github.com/conradwt/rails-setup-guide-for-macos/issues)

## Contact

Follow Conrad Taylor on Twitter ([@conradwt](https://twitter.com/conradwt))

## Creator

- [Conrad Taylor](http://github.com/conradwt) ([@conradwt](https://twitter.com/conradwt))

## License

This repository is released under the [MIT License](http://www.opensource.org/licenses/MIT).

## Copyright

&copy; Copyright 2014 - 2016 Conrad Taylor. All Rights Reserved.
