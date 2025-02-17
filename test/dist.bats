#!/usr/bin/env bats

load test_helper

@test "relax dist /path/to/project --scheme \"Sample App\" --profile \"Relax AdHoc\"" {
  run relax dist SampleApp.xcodeproj --scheme "Sample App" --profile "Relax AdHoc"
  assert_success
  [[ "${output}" =~ "xcarchive" ]]
  [[ "${output}" =~ "ipa" ]]
}

@test "relax dist adhoc" {
  run relax dist adhoc
  assert_success
  [[ "${output}" =~ "xcarchive" ]]
  [[ "${output}" =~ "ipa" ]]
}

