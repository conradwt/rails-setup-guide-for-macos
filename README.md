# Rails Setup Guide For macOS

The purpose of this step by step tutorial is to provide a very simple example of configuring a minimal Rails environment.

# Software Requirements

- macOS 10.14.3 or later

## Installation Steps

1.  download and install Xcode from Mac App Store

    [Download Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12#)

2.  in Terminal.app, install command line tools

    ```bash
    xcode-select --install
    ```

3.  download and install VS Code Insiders

    [Download VS Code Insiders](https://code.visualstudio.com/docs/?dv=osx&build=insiders)

4.  download and install MacPorts for macOS

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

5.  in Terminal.app, clone this repository

    ```bash
    git clone https://github.com/conradwt/rails-setup-guide-for-macos
    ```

6.  in Terminal.app, change directory to the cloned repository

    ```bash
    cd rails-setup-guide-for-macos
    ```

7.  in Terminal.app, install required ports from MacPorts

    ```bash
    chmod +x install-ports.sh
    ./install-ports.sh
    ```
    
8. in Terminal.app, set PostgreSQL 11 as the default version

    ```bash
    sudo port select postgresql postgresql11
    ```

9. in Terminal.app, set up PostgreSQL Server

    ```bash
    sudo mkdir -p /opt/local/var/db/postgresql11/defaultdb
    sudo chown postgres:postgres /opt/local/var/db/postgresql11/defaultdb
    sudo su postgres -c '/opt/local/lib/postgresql11/bin/initdb -D /opt/local/var/db/postgresql11/defaultdb'
    ```

10. in Terminal.app, start the PostgreSQL 10 Server

    ```bash
    pgstart
    ```

11.  download and install Node

    [Download Node](https://nodejs.org/dist/v11.12.0/node-v11.12.0.pkg)

12.  in Terminal.app, remove existing environment initialization files

    ```bash
    mv ~/.bashrc ~/.bashrc.orig
    mv ~/.bash_login ~/.bash_login.orig
    mv ~/.bash_profile ~/.bash_profile.orig
    mv ~/.profile ~/.profile.orig
    mv ~/.zshrc ~/.zshrc.orig
    ```

    Note: Some or most of the above files may not exist. Thus, if you get the
    following error it's OK:

    e.g. mv: rename .bashrc to .bashrc.orig: No such file or directory

13. in Terminal.app, configure the .profile

    ```bash
    cp sample.profile $HOME/.profile
    . ~/.profile
    ```

    Note: If you see the following:

    ```text
    **-bash: rbenv: command not found**
    ```

    Please continue to the next step.

14. in Terminal.app, set the Git completion

    ```bash
    cp sample.git-completion.sh $HOME/.git-completion.sh
    ```

15. in Terminal.app, create a Github.com account

    ```text
    Note:  Skip this step if you already have an account.
    ```

16. in Terminal.app, create Git configuration and global files

    ```bash
    cp sample.gitconfig ~/.gitconfig
    cp sample.gitignore_global ~/.gitignore_global
    ```

17. in Terminal.app, edit .gitconfig file

    - change `excludesfile` setting:

      ```bash
      git config --global core.excludesfile ~/.gitignore_global
      ```

    - change `name` and `email` for Github account

      e.g.

      ```bash
      git config --global user.name "John Doe"
      git config --global user.email johndoe@example.com
      ```

18. in Terminal.app, install RBenv

    ```bash
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    ```

19. in Terminal.app, install all of the approved plugins RBenv plugins

    ```bash
    chmod +x install-rbenv-plugins.sh
    ./install-rbenv-plugins.sh
    ```

20. in Terminal.app, install Ruby

    ```bash
    rbenv install 2.6.2
    rbenv global 2.6.2
    ```

21. in Terminal.app, install Rails

    ```bash
    gem install bundler -v 1.17.3
    gem install rails
    gem install rubocop
    gem install pg
    rbenv rehash
    ```

22. download and install Heroku Toolbelt

    [Download Heroku Toolbelt](https://toolbelt.heroku.com)

23. in Terminal.app, set the terminal

    ```bash
    cp sample.terminal $HOME/.
    ```

24. in Terminal.app menu, Shell -> Import, select `sample.terminal` file

    ```text
    Terminal -> Preferences -> Settings, click the 'sample' profile on the left, click Default
    ```

25. create and/or setup SSH keys

    - have existing ssh keys

      - create SSH folder in home directory

        ```bash
         mkdir -p $HOME/.ssh
        ```

      - copy your SSH keys to the above folder

      - set permissions

        ```bash
        chmod 700 $HOME/.ssh
        chmod 600 $HOME/id_rsa
        chmod 644 $HOME/id_rsa.pub
        ```

    - doesn't have existing ssh keys

      - [Generating a new SSH key and adding it to the ssh-agent](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

        Note: Please select Mac link at the top of the page.

26. Add SSH public key to Github

    [Adding a new SSH key to your GitHub account](https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account)

## Support

Bug reports and feature requests can be filed for the `rails-setup-guide-for-macos` project here:

- [File Bug Reports and Features](https://github.com/conradwt/rails-setup-guide-for-macos/issues)

## Contact

Follow Conrad Taylor on Twitter ([@conradwt](https://twitter.com/conradwt))

## Creator

- [Conrad Taylor](http://github.com/conradwt) ([@conradwt](https://twitter.com/conradwt))

## License

This repository is released under the [MIT License](http://www.opensource.org/licenses/MIT).

## Copyright

&copy; Copyright 2014 - 2019 Conrad Taylor. All Rights Reserved.
