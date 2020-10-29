#!/bin/bash

API="http://localhost:4741"
URL_PATH="/logs"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "log": {
      "name": "'"${NAME}"'",
      "date": "'"${DATE}"'",
      "breakfast": "'"${BREAKFAST}"'",
      "dinner": "'"${DINNER}"'",
      "exercise": "'"${EXERCISE}"'"
    }
  }'

echo
