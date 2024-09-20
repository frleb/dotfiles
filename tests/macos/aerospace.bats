#!/usr/bin/env bats

@test "[macos] ensure aerospace is installed" {
    [ -f "${HOME}/.aerospace.toml" ]
}


@test "[macos] ensure aerospace config exists" {
    [ -f "${HOME}/.aerospace.toml" ]
}
