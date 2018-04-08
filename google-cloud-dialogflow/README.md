# Ruby Client for Dialogflow API ([Alpha](https://github.com/GoogleCloudPlatform/google-cloud-ruby#versioning))

[Dialogflow API][Product Documentation]:
An end-to-end development suite for conversational interfaces (e.g.,
chatbots, voice-powered apps and devices).
- [Client Library Documentation][]
- [Product Documentation][]

## Quick Start
In order to use this library, you first need to go through the following
steps:

1. [Select or create a Cloud Platform project.](https://console.cloud.google.com/project)
2. [Enable billing for your project.](https://cloud.google.com/billing/docs/how-to/modify-project#enable_billing_for_a_project)
3. [Enable the Dialogflow API.](https://console.cloud.google.com/apis/api/dialogflow)
4. [Setup Authentication.](https://googlecloudplatform.github.io/google-cloud-ruby/#/docs/google-cloud/master/guides/authentication)

### Installation
```
$ gem install google-cloud-dialogflow
```

### Preview
#### DetectIntent
```rb
require "google/cloud/dialogflow"

project_id = 'Your Google Cloud project ID'
session_id = SecureRandom.uuid

dialogflow_client = Google::Cloud::Dialogflow::Sessions.new
response = dialogflow_client.detect_intent(
  "projects/#{project_id}/agent/sessions/#{session_id}",
  text: Google::Cloud::Dialogflow::V2beta1::TextInput.new(
    text: 'this is a test',
    language_code: 'en-US'
  )
)
```

### Next Steps
- Read the [Client Library Documentation][] for Dialogflow API
  to see other available methods on the client.
- Read the [Dialogflow API Product documentation][Product Documentation]
  to learn more about the product and see How-to Guides.
- View this [repository's main README](https://github.com/GoogleCloudPlatform/google-cloud-ruby/blob/master/README.md)
  to see the full list of Cloud APIs that we cover.

[Client Library Documentation]: https://googlecloudplatform.github.io/google-cloud-ruby/#/docs/google-cloud-dialogflow/latest/google/cloud/dialogflow/v2beta1
[Product Documentation]: https://cloud.google.com/dialogflow
	