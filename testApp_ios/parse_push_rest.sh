#!/bin/sh
# @Author: Tamas Szucs
# @Date:   2014-05-15 12:08:58
# @Last Modified by:   Tamas Szucs
# @Last Modified time: 2014-05-15 12:36:46

res=$(curl -X POST \
  -H "X-Parse-Application-Id: ZgdyVtUarlOiQmzlHBESjKZbFSe0EynmObTHPSo3" \
  -H "X-Parse-REST-API-Key: jq5kQ2cHJ9GyRjyF8rE5e1y7ryN6ufLXuUMBxFxz" \
  -H "Content-Type: application/json" \
  -d '{
        "where": {
          "deviceType": "ios"
        },
        "data": {
          "alert": "Your suitcase has been filled with tiny apples!"
        }
      }' \
  https://api.parse.com/1/push)

echo " --- Result ---"
echo "$res"
echo " --------------"