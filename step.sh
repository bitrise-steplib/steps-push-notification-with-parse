#default message

formatted_output_file_path="$BITRISE_STEP_FORMATTED_OUTPUT_FILE_PATH"

function echo_string_to_formatted_output {
  echo "$1" >> $formatted_output_file_path
}

function write_section_to_formatted_output {
  echo '' >> $formatted_output_file_path
  echo "$1" >> $formatted_output_file_path
  echo '' >> $formatted_output_file_path
}

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

write_section_to_formatted_output "Result:"
write_section_to_formatted_output "${res}"