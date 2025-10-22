#!/usr/bin/env bash
APIKEY="cisco|AX6kQ1Z2I5_X6Xk52SLDkoBvYFYl0ZXEvpN6FqbICFg"

for BOOK in {911..950}
do
  echo $BOOK
  DELETE_URL="http://library.demo.local/api/v1/books/$BOOK"
  echo $DELETE_URL
  curl -X DELETE $DELETE_URL \
    -H "accept: application/json" \
    -H "X-API-Key: $APIKEY" \
    -H "Content-Type: application/json"
done
