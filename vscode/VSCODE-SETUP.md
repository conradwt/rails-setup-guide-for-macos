# VSCode Setup

## Software Requirement

- Windows Pro 10 Version 1903 (OS Build 18362.10013) or later
- VSCode - Insiders

## Steps

1.  Exit VS Code - Insiders

2.  In Powershell, install VS Code Extensions

    ```text
    code-insiders --install-extension angryobject.react-pure-to-class-vscode
    code-insiders --install-extension apollographql.vscode-apollo
    code-insiders --install-extension be5invis.vscode-custom-css
    code-insiders --install-extension benvp.vscode-hex-pm-intellisense
    code-insiders --install-extension bungcip.better-toml
    code-insiders --install-extension burkeholland.react-food-truck
    code-insiders --install-extension burkeholland.simple-react-snippets
    code-insiders --install-extension capaj.vscode-exports-autocomplete
    code-insiders --install-extension castwide.solargraph
    code-insiders --install-extension christian-kohler.npm-intellisense
    code-insiders --install-extension DavidAnson.vscode-markdownlint
    code-insiders --install-extension dbaeumer.vscode-eslint
    code-insiders --install-extension docsmsft.docs-markdown
    code-insiders --install-extension eamodio.gitlens
    code-insiders --install-extension eg2.vscode-npm-script
    code-insiders --install-extension Equinusocio.vsc-material-theme
    code-insiders --install-extension esbenp.prettier-vscode
    code-insiders --install-extension GitHub.vscode-pull-request-github
    code-insiders --install-extension gottfired.css2react
    code-insiders --install-extension humao.rest-client
    code-insiders --install-extension kumar-harsh.graphql-for-vscode
    code-insiders --install-extension mikestead.dotenv
    code-insiders --install-extension misogi.ruby-rubocop
    code-insiders --install-extension ms-vscode-remote.remote-containers
    code-insiders --install-extension ms-vscode-remote.remote-ssh
    code-insiders --install-extension ms-vscode-remote.remote-ssh-edit
    code-insiders --install-extension ms-vscode-remote.remote-ssh-explorer
    code-insiders --install-extension ms-vscode-remote.remote-wsl
    code-insiders --install-extension ms-vscode-remote.vscode-remote-extensionpack
    code-insiders --install-extension ms-vsliveshare.vsliveshare
    code-insiders --install-extension msjsdiag.debugger-for-chrome
    code-insiders --install-extension noku.rails-run-spec-vscode
    code-insiders --install-extension Orta.vscode-jest
    code-insiders --install-extension pflannery.vscode-versionlens
    code-insiders --install-extension PKief.material-icon-theme
    code-insiders --install-extension Prisma.vscode-graphql
    code-insiders --install-extension rebornix.ruby
    code-insiders --install-extension redhat.vscode-yaml
    code-insiders --install-extension robinbentley.sass-indented
    code-insiders --install-extension sdras.night-owl
    code-insiders --install-extension Shan.code-settings-sync
    code-insiders --install-extension sidthesloth.html5-boilerplate
    code-insiders --install-extension streetsidesoftware.code-spell-checker
    code-insiders --install-extension VisualStudioExptTeam.vscodeintellicode
    code-insiders --install-extension vscode-icons-team.vscode-icons
    code-insiders --install-extension wesbos.theme-cobalt2
    code-insiders --install-extension wix.vscode-import-cost
    code-insiders --install-extension xabikos.JavaScriptSnippets
    code-insiders --install-extension xabikos.ReactSnippets

    ```

3.  In VSCode - Insiders, setup Settings

    a. open settings

    ```text
    Control ,
    ```

    b. click `Open Settings (JSON)`

    c. replace the contents of (b) with the contents of the following file:

        https://raw.githubusercontent.com/conradwt/rails-setup-guide-for-windows/master/vscode/settings.json

    d. update lines 36 and 58 to use the correct <ubuntu-username> and <windows-username> respectively.

4.  Configure `Settings Sync`

    https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync

    Note: We can go through this step during a future mentor session.

5.  In Ubuntu, add editor styles

    ```zsh
    cp $HOME/rails-setup-guide-for-windows/vscode/sample.vscodestyles.css /mnt/c/users/<windows-username>/.vscodestyles.css
    ```

6.  In Powershell (as administrator), install the Chocolatey:

    ```powershell
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    ```

7.  In Powershell (as administrator), install Fira Code font:

    ```powershell
    choco install firacode
    ```

## Have Questions

If you have any questions regarding these instructions, please let me know at your earliest by sending me a message on Slack.
