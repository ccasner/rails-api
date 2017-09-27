#!/bin/bash

#TOKEN=BAhJIiU3MDY3Y2RhZDY4MjE5ZjBiYTIzNWFjMzJjMWRjMzczNgY6BkVG--add6b2ad1c0de3f09d42327137398961af6e7eb0 sh scripts/charges/get-all-charges.sh


API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/charges"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
