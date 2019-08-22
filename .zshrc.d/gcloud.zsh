# The next line enables shell command completion for gcloud.
if [ -f /usr/local/google-cloud-sdk/completion.zsh.inc ]; then
  source '/usr/local/google-cloud-sdk/path.zsh.inc'
  source '/usr/local/google-cloud-sdk/completion.zsh.inc'
  # export PATH=/usr/local/google-cloud-sdk/bin:${PATH}
fi

# setup kubectl zsh-completion.
(( $+commands[kubectl] )) && source <(kubectl completion zsh)

# set environment variable for service account key.
# export GOOGLE_APPLICATION_CREDENTIALS="/Users/conradwt/gcp.dir/credentials/key.json"
export GOOGLE_APPLICATION_CREDENTIALS="/Users/conradwt/cloudcode-projects/nodejs-hello-world-1/cwt-translate-demo-ab310c3b2bb7.json"
