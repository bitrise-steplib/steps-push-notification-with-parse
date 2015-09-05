# Push Notification with Parse step

The new Push Notification with Parse step.

Bitrise step to send Push Notification with Parse. https://parse.com/
To use their service you have to register first. It is possible to register a trial account for free.
You can get the required keys and IDs from your parse app's page, similar to this: https://www.parse.com/apps/your-parse-apps-name/edit#app_keys

You have to install your own Push Receiver app - you can find a template app here: https://github.com/bitrise-io/example-parse-notification-center-ios-app


Can be run directly with the [bitrise CLI](https://github.com/bitrise-io/bitrise),
just `git clone` this repository, `cd` into it's folder in your Terminal/Command Line
and call `bitrise run test`.

*Check the `bitrise.yml` file for required inputs which have to be
added to your `.bitrise.secrets.yml` file!*


# Input Environment Variables
- app_id
- rest_key
- message
