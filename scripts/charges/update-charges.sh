#ID=4 TOKEN=BAhJIiU3MDY3Y2RhZDY4MjE5ZjBiYTIzNWFjMzJjMWRjMzczNgY6BkVG--add6b2ad1c0de3f09d42327137398961af6e7eb0 DATE=2016-05-05 sh scripts/charges/update-charges.sh

curl --include --request PATCH "http://localhost:4741/charges/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "charge": {
      "date": "'"${DATE}"'"
    }
  }'
