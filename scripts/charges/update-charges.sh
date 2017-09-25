#ID=2 LOCATION=WESTON sh scripts/charges/update-charges.sh

curl --include --request PATCH "http://localhost:4741/charges/${ID}" \
  --header "Content-Type: application/json" \
  --data '{
    "charge": {
      "location": "'"${LOCATION}"'",
      "price": "'"${PRICE}"'",
      "date": "'"${DATE}"'"
    }
  }'
