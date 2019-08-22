# set environment variables for Rbenv.
export PATH=${HOME}/.rbenv/bin:${PATH}
export RUBY_CONFIGURE_OPTS=--with-openssl-dir=/opt/local
eval "$(rbenv init -)"
