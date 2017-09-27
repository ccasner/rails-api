#ID=3 sh scripts/tolls/get-one-toll.sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/tolls/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET

  echo
