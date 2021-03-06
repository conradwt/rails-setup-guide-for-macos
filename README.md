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

3.  download and/or install MacPorts version appropriate for your macOS version

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

4.  in Terminal.app, clone this repository

    ```bash
    git clone https://github.com/conradwt/rails-setup-guide-for-macos
    ```

5.  in Terminal.app, change directory to the cloned repository

    ```bash
    cd rails-setup-guide-for-macos
    ```

6.  in Terminal.app, install required ports from MacPorts

    ```bash
    chmod +x install-ports.sh
    ./install-ports.sh
    ```

7.  in Terminal.app, set up PostgreSQL Server


    ```bash
    sudo mkdir -p /opt/local/var/db/postgresql11/defaultdb
    sudo chown postgres:postgres /opt/local/var/db/postgresql11/defaultdb
    sudo su postgres -c '/opt/local/lib/postgresql11/bin/initdb -D /opt/local/var/db/postgresql11/defaultdb'
    ```

8. in Terminal.app, set PostgreSQL 11 as the default version

   ```bash
   sudo port select postgresql postgresql11
   ```

9. in Terminal.app, start the PostgreSQL Server

   ```bash
   pgstart
   ```

10. download and install Node

    [Download Node](https://nodejs.org/dist/v12.9.0/node-v12.9.0.pkg)

    ```bash
    mkdir -p "${HOME}/.npm-packages"
    npm config set prefix "${HOME}/.npm-packages"
    NPM_PACKAGES="${HOME}/.npm-packages"
    export PATH="$NPM_PACKAGES/bin:$PATH"
    ```

11. in Terminal.app, install RBenv

    ```bash
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    chmod -R go-w $HOME/.rbenv
    cd ~/.rbenv && src/configure && make -C src
    export PATH=${HOME}/.rbenv/bin:${PATH}
    eval "$(rbenv init -)"
    ```

12. in Terminal.app, install all of the approved plugins RBenv plugins

    ```bash
    chmod +x $HOME/rails-setup-guide-for-macos/install-rbenv-plugins.sh
    $HOME/rails-setup-guide-for-macos/install-rbenv-plugins.sh
    cp $HOME/rails-setup-guide-for-macos/sample.default-gems $HOME/.rbenv/default-gems
    ```

13. in Terminal.app, install Ruby

    ```bash
    rbenv install 2.7.1
    rbenv global 2.7.1
    ```

14. in Terminal.app, install Rails

    ```bash
    gem update --system
    rbenv rehash
    ```

15. in Terminal.app, install Oh My ZSH

    ```bash
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    npm install -g spaceship-prompt
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    mkdir -p $HOME/.zsh/completions
    curl https://github.com/github/hub/blob/master/etc/hub.zsh_completion >  ~/.zsh/completions/_hub
    sudo chmod +x $HOME/.zsh/completions/_hub
    cp -r $HOME/rails-setup-guide-for-macos/sample.zshrc.d ~/.zshrc.d
    cp $HOME/rails-setup-guide-for-macos/sample.zshrc ~/.zshrc
    cp $HOME/rails-setup-guide-for-macos/sample.zshenv ~/.zshenv
    ```

16. in Terminal.app, open another terminal

    ```text
    Command N
    ```

17. download and install VS Code Insiders

    [Download VS Code Insiders](https://code.visualstudio.com/docs/?dv=osx&build=insiders)

18. in Terminal.app, install VS Code Extensions

    ```bash
    chmod +x $HOME/rails-setup-guide-for-macos/vscode/vscode-extensions.zsh
    ./$HOME/rails-setup-guide-for-macos/vscode/vscode-extensions.zsh
    ```

19. install VS Code Insiders command line interface (CLI)

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

20. download and install Heroku Toolbelt

    [Download Heroku Toolbelt](https://toolbelt.heroku.com)

21. in Terminal.app, set the Git completion

    ```bash
    cp sample.git-completion.sh $HOME/.git-completion.sh
    ```

22. in Chrome, create a Github.com account

    ```text
    Note:  Skip this step if you already have an account.
    ```

23. in Terminal.app, create Git configuration and global files

    ```bash
    cp sample.gitconfig ~/.gitconfig
    cp sample.gitignore_global ~/.gitignore_global
    ```

24. in Terminal.app, edit .gitconfig file

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

    - set the default pager

      ```bash
      git config --global core.pager ''
      ```

25. create and/or setup SSH keys

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

26. Add SSH public key to Github

    [Adding a new SSH key to your GitHub account](https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account)

27. in the Terminal.app, testing your SSH connection

    [Testing your SSH connection](https://help.github.com/en/articles/testing-your-ssh-connection)

28. in Terminal.app, set the terminal

    ```bash
    cp sample.terminal $HOME/.
    ```

28) in Terminal.app menu, Shell -> Import, select `sample.terminal` file

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
