#!/bin/bash

#TOKEN=BAhJIiVkMTAzZTI4NWRkNDY5NmRlZWViMDFkODkxYzE0M2RjMQY6BkVG--a0eec824634afd1c385d75308e458f753405fb6a LOCATION=LEE PRICE=0.25 DATE=2017-09-09 sh scripts/charges/create-charge.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/charges"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "charge": {
      "location": "'"${LOCATION}"'",
      "price": "'"${PRICE}"'",
      "date": "'"${DATE}"'"
    }
  }'

echo
