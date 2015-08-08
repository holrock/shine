#!/bin/sh

set -x

bundle exec rails new --skip-turbolinks \
  --skip-spring \
  --skip-test-unit \
  -d postgresql \
  shine

createuser --createdb --login -P shine
