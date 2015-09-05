#default message
if [ ${message+x} ]; then
	msg=$message
else
	msg="Push from Bitrise"
fi

echo "app_id: $app_id"
echo "rest_key: $rest_key"
echo "message: $message"

res=$(curl -X POST \
  -H "X-Parse-Application-Id: $app_id" \
  -H "X-Parse-REST-API-Key: $rest_key" \
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