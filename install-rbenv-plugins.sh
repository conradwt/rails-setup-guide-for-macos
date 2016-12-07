#!/bin/bash

git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone git://github.com/tpope/rbenv-ctags.git ~/.rbenv/plugins/rbenv-ctags
git clone https://github.com/sstephenson/rbenv-vars.git ~/.rbenv/plugins/rbenv-vars
git clone https://github.com/chriseppstein/rbenv-each.git  ~/.rbenv/plugins/rbenv-each
git clone https://github.com/rkh/rbenv-update.git ~/.rbenv/plugins/rbenv-update
git clone https://github.com/rkh/rbenv-use.git ~/.rbenv/plugins/rbenv-use
git clone https://github.com/rkh/rbenv-whatis.git ~/.rbenv/plugins/rbenv-whatis
git clone git://github.com/tpope/rbenv-aliases.git ~/.rbenv/plugins/rbenv-aliases
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
git clone https://github.com/sstephenson/rbenv-default-gems.git ~/.rbenv/plugins/rbenv-default-gems
git clone git://github.com/tpope/rbenv-communal-gems.git ~/.rbenv/plugins/rbenv-communal-gems
rbenv communize --all
git clone git://github.com/jamis/rbenv-gemset.git ~/.rbenv/plugins/rbenv-gemset
