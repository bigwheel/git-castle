#!/usr/bin/env bats

@test 'git user.name is configured correctly' {
  run git config --get user.name
  [ "$status" -eq 0 ]
}

@test 'git user.email is configured correctly' {
  run git config --get user.email
  [ "$status" -eq 0 ]
}
