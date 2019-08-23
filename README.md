# Rails Setup Guide For macOS

The purpose of this step by step tutorial is to provide a very simple example of configuring a minimal Rails environment.

# Software Requirements

- macOS 10.14.4 or later

## Installation Steps

1.  download and install Xcode from Mac App Store

    [Download Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12#)

2.  in Terminal.app, install command line tools

    ```bash
    xcode-select --install
    ```

3.  download and install VS Code Insiders

    [Download VS Code Insiders](https://code.visualstudio.com/docs/?dv=osx&build=insiders)

4.  install VS Code Insiders command line interface (CLI)

    - in VS Code Insiders.app, type

      ```text
      Command Shift P
      ```

    - in the input field that appears, type

      ```text
      shell command install
      ```

    - select the the following text

      ```text
      Shell Command: Install `code-insiders` command in PATH
      ```

5.  in Terminal.app, install VS Code Extensions

    ```bash
    
    ```

6.  download and/or install MacPorts version appropriate for your macOS version

    - if macOS version >= 10.14 and < 10.15

      [Download MacPorts](https://distfiles.macports.org/MacPorts/MacPorts-2.5.4-10.14-Mojave.pkg)

    - if macOS version >= 10.15 and < 10.16

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

7.  in Terminal.app, clone this repository

    ```bash
    git clone https://github.com/conradwt/rails-setup-guide-for-macos
    ```

8.  in Terminal.app, change directory to the cloned repository

    ```bash
    cd rails-setup-guide-for-macos
    ```

9.  in Terminal.app, install required ports from MacPorts

    ```bash
    chmod +x install-ports.sh
    ./install-ports.sh
    ```

10. in Terminal.app, set up PostgreSQL Server


    ```bash
    sudo mkdir -p /opt/local/var/db/postgresql11/defaultdb
    sudo chown postgres:postgres /opt/local/var/db/postgresql11/defaultdb
    sudo su postgres -c '/opt/local/lib/postgresql11/bin/initdb -D /opt/local/var/db/postgresql11/defaultdb'
    ```

11. in Terminal.app, set PostgreSQL 11 as the default version

    ```bash
    sudo port select postgresql postgresql11
    ```

12. in Terminal.app, start the PostgreSQL Server

    ```bash
    pgstart
    ```

13. download and install Node

    [Download Node](https://nodejs.org/dist/v11.14.0/node-v11.14.0.pkg)

14. in Terminal.app, remove existing environment initialization files

    ```bash
    mv ~/.bashrc ~/.bashrc.orig
    mv ~/.bash_login ~/.bash_login.orig
    mv ~/.bash_profile ~/.bash_profile.orig
    mv ~/.profile ~/.profile.orig
    mv ~/.zshrc ~/.zshrc.orig
    ```

    Note: Some or most of the above files may not exist. Thus, if you get the
    following error it's OK:

    e.g. `mv: rename .bashrc to .bashrc.orig: No such file or directory`

15. in Terminal.app, configure the .profile

    ```bash
    cp sample.profile $HOME/.profile
    . ~/.profile
    ```

    Note: If you see the following:

    ```text
    **-bash: rbenv: command not found**
    ```

    Please continue to the next step.

16. in Terminal.app, set the Git completion

    ```bash
    cp sample.git-completion.sh $HOME/.git-completion.sh
    ```

17. in Terminal.app, create a Github.com account

    ```text
    Note:  Skip this step if you already have an account.
    ```

18. in Terminal.app, create Git configuration and global files

    ```bash
    cp sample.gitconfig ~/.gitconfig
    cp sample.gitignore_global ~/.gitignore_global
    ```

19. in Terminal.app, edit .gitconfig file

    - change `excludesfile` setting:

      ```bash
      git config --global core.excludesfile ~/.gitignore_global
      ```

    - change `name` and `email` for Github account

      e.g.

      ```bash
      git config --global user.name "John Doe"
      git config --global user.email "johndoe@example.com"
      ```

20. in Terminal.app, install RBenv

    ```bash
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    ```

21. in Terminal.app, install all of the approved plugins RBenv plugins

    ```bash
    chmod +x install-rbenv-plugins.sh
    ./install-rbenv-plugins.sh
    ```

22. in Terminal.app, install Ruby

    ```bash
    rbenv install 2.6.3
    rbenv global 2.6.3
    ```

23. in Terminal.app, install Rails

    ```bash
    gem update --system
    gem install bundler
    gem install rails
    gem install rubocop
    gem install solargraph
    gem install ruby-debug-ide
    rbenv rehash
    ```

24. In Ubuntu, install Oh My ZSH


    ```bash
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    npm install -g spaceship-prompt
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    mkdir -p $HOME/.zsh/completions
    curl https://github.com/github/hub/blob/master/etc/hub.zsh_completion >  ~/.zsh/completions/_hub
    sudo chmod +x $HOME/.zsh/completions/_hub
    cp -r $HOME/rails-setup-guide-for-windows/sample.zshrc.d ~/.zshrc.d
    cp $HOME/rails-setup-guide-for-windows/sample.zshrc ~/.zshrc
    cp $HOME/rails-setup-guide-for-windows/sample.zshenv ~/.zshenv
    ```

25. download and install Heroku Toolbelt

    [Download Heroku Toolbelt](https://toolbelt.heroku.com)

26. create and/or setup SSH keys

    - if you have SSH keys

      - create SSH folder in home directory

        ```bash
         mkdir -p $HOME/.ssh
        ```

      - copy your SSH keys to the above folder

      - set permissions

        ```bash
        chmod 700 $HOME/.ssh
        chmod 600 $HOME/.ssh/id_rsa
        chmod 644 $HOME/.ssh/id_rsa.pub
        ```

    - if you don't have SSH keys

      - [Generating a new SSH key and adding it to the ssh-agent](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

        Note: Please select Mac link at the top of the page.

27. Add SSH public key to Github

    [Adding a new SSH key to your GitHub account](https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account)

28. in Terminal.app, set the terminal

    ```bash
    cp sample.terminal $HOME/.
    ```

29. in the Terminal.app, testing your SSH connection

    [Testing your SSH connection](https://help.github.com/en/articles/testing-your-ssh-connection)

30. in Terminal.app menu, Shell -> Import, select `sample.terminal` file

    ```text
    Terminal -> Preferences -> Profiles, select the 'sample' profile in the left sidebar, click Default at the bottom of the window
    ```

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
