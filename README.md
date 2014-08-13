steps-push-notification-with-parse
==================================

Bitrise step to send Push Notification with Parse. [https://parse.com/](https://parse.com/)

To use their service you have to register first. It is possible to register a trial account for free.

You have to install your own Push Receiver app - you can find a template app here: [https://github.com/bitrise-io/example-parse-notification-center-ios-app](https://github.com/bitrise-io/example-parse-notification-center-ios-app)

# Input Environment Variables
- **PARSE_PUSH_APP_ID**

	at [https://www.parse.com/apps/your-parse-apps-name/edit#app_keys](https://www.parse.com/apps/your-parse-apps-name/edit#app_keys)
- **PARSE_PUSH_REST_KEY**

	at [https://www.parse.com/apps/your-parse-apps-name/edit#app_keys](https://www.parse.com/apps/your-parse-apps-name/edit#app_keys)
- **PARSE_PUSH_MESSAGE**

	optional, default = "Automatic build with Bitrise."