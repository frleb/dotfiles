#!/usr/bin/env bats

@test "hello.sh should great the user" {
  run src/hello.sh John
  assert_output "Hello John"
}
