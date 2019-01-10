# Rails Setup Guide For macOS

The purpose of this step by step tutorial is to provide a very simple example of configuring a minimal Rails environment.

# Software Requirements

- macOS 10.13.3 or later

## Installation Steps

1. download and install Xcode from Mac App Store

   [Download Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12#)

2. from the Terminal.app, install command line tools

   ```bash
   xcode-select --install
   ```

3. download and install MacPorts for macOS

   macOS 10.14:

   [Download MacPorts](https://distfiles.macports.org/MacPorts/MacPorts-2.5.4-10.14-Mojave.pkg)

   macOS > 10.14:

   ```bash
   WORKING_DIRECTORY=${HOME}/macports.dir/projects/macports
   mkdir -p ${WORKING_DIRECTORY}
   cd ${WORKING_DIRECTORY}
   git clone https://github.com/macports/macports-base.git
   cd ${WORKING_DIRECTORY}/macports-base
   ./configure --enable-readline
   make
   sudo make install
   make distclean
   sudo port selfupdate
   ```

4. clone this repository

   ```bash
   git clone https://github.com/conradwt/rails-setup-guide-for-macos
   ```

5. change directory to the cloned repository

   ```bash
   cd path/to/rails-setup-guide-for-macos
   ```

6. install required ports from MacPorts

   ```bash
   chmod +x install-ports.sh
   ./install-ports.sh
   ```

7. download and install Node

[Download Node](https://nodejs.org/dist/v10.5.0/node-v10.5.0.pkg)

8. open the Terminal.app

9. remove existing environment initialization files

   ```bash
   mv ~/.bashrc ~/.bashrc.orig
   mv ~/.bash_login ~/.bash_login.orig
   mv ~/.bash_profile ~/.bash_profile.orig
   mv ~/.profile ~/.profile.orig
   mv ~/.zshrc ~/.zshrc.orig
   ```

Note: Some or most of the above files may not exist. Thus, if you get the
following error it's OK:

        e.g.  mv: rename .bashrc to .bashrc.orig: No such file or directory

10. configure the .profile

    ```bash
    cp sample.profile $HOME/.profile
    . ~/.profile
    ```

    Note: If you see the following:

    ```text
    **-bash: rbenv: command not found**
    ```

    Please continue to the next step.

11. set the Git completion

    ```bash
    cp sample.git-completion.sh $HOME/.git-completion.sh
    ```

12) create a Github.com account

    ```text
    Note:  Skip this step if you already have an account.
    ```

13. create Git configuration file

    ```bash
    cp sample.gitconfig ~/.gitconfig
    ```

14. edit the Git configuration file

    ```bash
    code-insiders ~/.gitconfig
    ```

    Note: `code-insiders` editor is being used but you can use any editor to make the
    modifications to the `.gitconfig` file.

    change the text on the right side of the equal:

          name = <your firstname lastname>
          email = <your e-mail address>

    to the text for your `name` and `e-mail` that you're using for Github.com:

        e.g.

        name = John Doe
        email = john.doe@example.com

15. install RBenv

    ```bash
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    ```

16. install all of the approved plugins RBenv plugins

    ```bash
    chmod +x install-rbenv-plugins.sh
    ./install-rbenv-plugins.sh
    ```

17. install Ruby

    ```bash
    rbenv install 2.5.3
    rbenv global 2.5.3
    ```

18. install Rails

    ```bash
    gem install bundler
    gem install rails -v 5.2.2
    rbenv rehash
    ```

19. install Heroku Toolbelt

    [Download Heroku Toolbelt](https://toolbelt.heroku.com)

20. set the terminal

    ```bash
    cp sample.terminal $HOME/.
    ```

21. from the terminal menu, Shell -> Import, select sample.terminal file

    ```text
    Terminal -> Preferences -> Settings, click the 'sample' profile on the left, click Default
    ```

22. set up PostgreSQL Server

    ```bash
    sudo mkdir -p /opt/local/var/db/postgresql10/defaultdb
    sudo chown postgres:postgres /opt/local/var/db/postgresql10/defaultdb
    sudo su postgres -c '/opt/local/lib/postgresql10/bin/initdb -D /opt/local/var/db/postgresql96/defaultdb'
    ```

23. set PostgreSQL 10 as the default version

    ```bash
    sudo port select postgresql postgresql10
    ```

24. start the PostgreSQL 10 Server

    ```bash
    pgstart
    ```

## Support

Bug reports and feature requests can be filed for the <add project here> project here:

- [File Bug Reports and Features](https://github.com/conradwt/rails-setup-guide-for-macos/issues)

## Contact

Follow Conrad Taylor on Twitter ([@conradwt](https://twitter.com/conradwt))

## Creator

- [Conrad Taylor](http://github.com/conradwt) ([@conradwt](https://twitter.com/conradwt))

## License

This repository is released under the [MIT License](http://www.opensource.org/licenses/MIT).

## Copyright

&copy; Copyright 2014 - 2019 Conrad Taylor. All Rights Reserved.
