
#ID=2 TOKEN=BAhJIiUyMGI0ZWVhYThlMjg2ZjM5OTI5ZThmYWFlM2U4MDIwOAY6BkVG--005e625c9746f18ec597fec3bf83f2a788dc1a31 sh scripts/charges/get-one-charge.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/charges/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

  echo
