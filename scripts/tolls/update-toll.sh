

curl --include --request PATCH "http://localhost:4741/tolls/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "charge": {
      "location": "'"${LOCATION}"'",
      "price": "'"${PRICE}"'"
    }
  }'

echo
