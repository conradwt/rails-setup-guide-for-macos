# set Docker Compose aliases.
alias dc=docker-compose
alias dc-app='docker-compose run --rm app'
alias dc-bash='docker-compose run --rm app bash'
alias dc-migrate='docker-compose run --rm app rails db:migrate'
alias dc-rails='docker-compose run --rm app rails'
alias dc-rspec='docker-compose run --rm app rspec'
alias dc-test='docker-compose run --rm app test'
alias docker-clean=' \
  docker container prune -f ; \
  docker image prune -f ; \
  docker network prune -f ; \
  docker volume prune -f '
