#default message
if [ ${PARSE_PUSH_MESSAGE+x} ]; then
	msg=$PARSE_PUSH_MESSAGE
else
	msg="Push from Bitrise"
fi

echo "PARSE_PUSH_APP_ID: $PARSE_PUSH_APP_ID"
echo "PARSE_PUSH_REST_KEY: $PARSE_PUSH_REST_KEY"
echo "PARSE_PUSH_MESSAGE: $PARSE_PUSH_MESSAGE"

res=$(curl -X POST \
  -H "X-Parse-Application-Id: $PARSE_PUSH_APP_ID" \
  -H "X-Parse-REST-API-Key: $PARSE_PUSH_REST_KEY" \
  -H "Content-Type: application/json" \
  -d "{
        \"where\": {
          \"deviceType\": \"ios\"
        },
        \"data\": {
          \"alert\": \"$msg\"
        }
      }" \
  https://api.parse.com/1/push)

echo " --- Result ---"
echo "$res"
echo " --------------"