# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module Google
  module Cloud
    module Dialogflow
      ##
      # # Dialogflow API Contents
      #
      # | Class | Description |
      # | ----- | ----------- |
      # | [ContextsClient][] | A context represents additional information included with user input or with an intent returned by the Dialogflow API. |
      # | [Data Types][] | Data types for Google::Cloud::Dialogflow::V2beta1 |
      #
      # [ContextsClient]: https://googlecloudplatform.github.io/google-cloud-ruby/#/docs/google-cloud-dialogflow/latest/google/cloud/dialogflow/v2beta1/contextsclient
      # [Data Types]: https://googlecloudplatform.github.io/google-cloud-ruby/#/docs/google-cloud-dialogflow/latest/google/cloud/dialogflow/v2beta1/datatypes
      #
      module V2beta1
        # Represents a context.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. The unique identifier of the context. Format:
        #     +projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>+,
        #     or
        #     +projects/<Project ID>/agent/runtimes/<Runtime ID>/sessions/<Session
        #     ID>/contexts/<Context ID>+.
        #     Note: Runtimes are under construction and will be available soon.
        #     The Context ID is always converted to lowercase.
        #     If <Runtime ID> is not specified, we assume default 'sandbox' runtime.
        # @!attribute [rw] lifespan_count
        #   @return [Integer]
        #     Optional. The number of conversational query requests after which the
        #     context expires. If set to +0+ (the default) the context expires
        #     immediately. Contexts expire automatically after 10 minutes even if there
        #     are no matching queries.
        # @!attribute [rw] parameters
        #   @return [Google::Protobuf::Struct]
        #     Optional. The collection of parameters associated with this context.
        #     Refer to [this doc](https://dialogflow.com/docs/actions-and-parameters) for
        #     syntax.
        class Context; end

        # The request message for {Google::Cloud::Dialogflow::V2beta1::Contexts::ListContexts Contexts::ListContexts}.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required. The session to list all contexts from.
        #     Format: +projects/<Project ID>/agent/sessions/<Session ID>+ or
        #     +projects/<Project ID>/agent/runtimes/<Runtime ID>/sessions/<Session ID>+.
        #     Note: Runtimes are under construction and will be available soon.
        #     If <Runtime ID> is not specified, we assume default 'sandbox' runtime.
        # @!attribute [rw] page_size
        #   @return [Integer]
        #     Optional. The maximum number of items to return in a single page. By
        #     default 100 and at most 1000.
        # @!attribute [rw] page_token
        #   @return [String]
        #     Optional. The next_page_token value returned from a previous list request.
        class ListContextsRequest; end

        # The response message for {Google::Cloud::Dialogflow::V2beta1::Contexts::ListContexts Contexts::ListContexts}.
        # @!attribute [rw] contexts
        #   @return [Array<Google::Cloud::Dialogflow::V2beta1::Context>]
        #     The list of contexts. There will be a maximum number of items
        #     returned based on the page_size field in the request.
        # @!attribute [rw] next_page_token
        #   @return [String]
        #     Token to retrieve the next page of results, or empty if there are no
        #     more results in the list.
        class ListContextsResponse; end

        # The request message for {Google::Cloud::Dialogflow::V2beta1::Contexts::GetContext Contexts::GetContext}.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. The name of the context. Format:
        #     +projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>+
        #     or +projects/<Project ID>/agent/runtimes/<Runtime ID>/sessions/<Session
        #     ID>/contexts/<Context ID>+. Note: Runtimes are under construction and will
        #     be available soon. If <Runtime ID> is not specified, we assume default
        #     'sandbox' runtime.
        class GetContextRequest; end

        # The request message for {Google::Cloud::Dialogflow::V2beta1::Contexts::CreateContext Contexts::CreateContext}.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required. The session to create a context for.
        #     Format: +projects/<Project ID>/agent/sessions/<Session ID>+ or
        #     +projects/<Project ID>/agent/runtimes/<Runtime ID>/sessions/<Session ID>+.
        #     Note: Runtimes are under construction and will be available soon.
        #     If <Runtime ID> is not specified, we assume default 'sandbox' runtime.
        # @!attribute [rw] context
        #   @return [Google::Cloud::Dialogflow::V2beta1::Context]
        #     Required. The context to create.
        class CreateContextRequest; end

        # The request message for {Google::Cloud::Dialogflow::V2beta1::Contexts::UpdateContext Contexts::UpdateContext}.
        # @!attribute [rw] context
        #   @return [Google::Cloud::Dialogflow::V2beta1::Context]
        #     Required. The context to update.
        # @!attribute [rw] update_mask
        #   @return [Google::Protobuf::FieldMask]
        #     Optional. The mask to control which fields get updated.
        class UpdateContextRequest; end

        # The request message for {Google::Cloud::Dialogflow::V2beta1::Contexts::DeleteContext Contexts::DeleteContext}.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. The name of the context to delete. Format:
        #     +projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>+
        #     or +projects/<Project ID>/agent/runtimes/<Runtime ID>/sessions/<Session
        #     ID>/contexts/<Context ID>+. Note: Runtimes are under construction and will
        #     be available soon. If <Runtime ID> is not specified, we assume default
        #     'sandbox' runtime.
        class DeleteContextRequest; end

        # The request message for {Google::Cloud::Dialogflow::V2beta1::Contexts::DeleteAllContexts Contexts::DeleteAllContexts}.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required. The name of the session to delete all contexts from. Format:
        #     +projects/<Project ID>/agent/sessions/<Session ID>+ or +projects/<Project
        #     ID>/agent/runtimes/<Runtime ID>/sessions/<Session ID>+. Note: Runtimes are
        #     under construction and will be available soon. If <Runtime ID> is not
        #     specified we assume default 'sandbox' runtime.
        class DeleteAllContextsRequest; end
      end
    end
  end
end