#!/usr/bin/env bash

# Section start: include libs
source dam-api.inc.sh
# Section end: include libs

# Section start: functions
function var_exists {
  if [[ -z "${!1}" ]]; then
    false
    return
  fi

  true
}
# Section end: functions

# Section start: main block
if ! var_exists DAM_API_USERNAME; then
  echo "Environment variable DAM_API_USERNAME is unset. Aborting"
  exit $ERROR_USERNAME_UNSET
fi

if ! var_exists DAM_API_PASSWORD; then
  echo "Environment variable DAM_API_PASSWORD is unset. Aborting"
  exit $ERROR_PASSWORD_UNSET
fi
# Section end: main block
