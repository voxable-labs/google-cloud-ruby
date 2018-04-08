# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2beta1/entity_type.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/struct_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.cloud.dialogflow.v2beta1.EntityType" do
    optional :name, :string, 1
    optional :display_name, :string, 2
    optional :kind, :enum, 3, "google.cloud.dialogflow.v2beta1.EntityType.Kind"
    optional :auto_expansion_mode, :enum, 4, "google.cloud.dialogflow.v2beta1.EntityType.AutoExpansionMode"
    repeated :entities, :message, 6, "google.cloud.dialogflow.v2beta1.EntityType.Entity"
  end
  add_message "google.cloud.dialogflow.v2beta1.EntityType.Entity" do
    optional :value, :string, 1
    repeated :synonyms, :string, 2
  end
  add_enum "google.cloud.dialogflow.v2beta1.EntityType.Kind" do
    value :KIND_UNSPECIFIED, 0
    value :KIND_MAP, 1
    value :KIND_LIST, 2
  end
  add_enum "google.cloud.dialogflow.v2beta1.EntityType.AutoExpansionMode" do
    value :AUTO_EXPANSION_MODE_UNSPECIFIED, 0
    value :AUTO_EXPANSION_MODE_DEFAULT, 1
  end
  add_message "google.cloud.dialogflow.v2beta1.ListEntityTypesRequest" do
    optional :parent, :string, 1
    optional :language_code, :string, 2
    optional :page_size, :int32, 3
    optional :page_token, :string, 4
  end
  add_message "google.cloud.dialogflow.v2beta1.ListEntityTypesResponse" do
    repeated :entity_types, :message, 1, "google.cloud.dialogflow.v2beta1.EntityType"
    optional :next_page_token, :string, 2
  end
  add_message "google.cloud.dialogflow.v2beta1.GetEntityTypeRequest" do
    optional :name, :string, 1
    optional :language_code, :string, 2
  end
  add_message "google.cloud.dialogflow.v2beta1.CreateEntityTypeRequest" do
    optional :parent, :string, 1
    optional :entity_type, :message, 2, "google.cloud.dialogflow.v2beta1.EntityType"
    optional :language_code, :string, 3
  end
  add_message "google.cloud.dialogflow.v2beta1.UpdateEntityTypeRequest" do
    optional :entity_type, :message, 1, "google.cloud.dialogflow.v2beta1.EntityType"
    optional :language_code, :string, 2
    optional :update_mask, :message, 3, "google.protobuf.FieldMask"
  end
  add_message "google.cloud.dialogflow.v2beta1.DeleteEntityTypeRequest" do
    optional :name, :string, 1
  end
  add_message "google.cloud.dialogflow.v2beta1.BatchUpdateEntityTypesRequest" do
    optional :parent, :string, 1
    optional :language_code, :string, 4
    optional :update_mask, :message, 5, "google.protobuf.FieldMask"
    oneof :entity_type_batch do
      optional :entity_type_batch_uri, :string, 2
      optional :entity_type_batch_inline, :message, 3, "google.cloud.dialogflow.v2beta1.EntityTypeBatch"
    end
  end
  add_message "google.cloud.dialogflow.v2beta1.BatchUpdateEntityTypesResponse" do
    repeated :entity_types, :message, 1, "google.cloud.dialogflow.v2beta1.EntityType"
  end
  add_message "google.cloud.dialogflow.v2beta1.BatchDeleteEntityTypesRequest" do
    optional :parent, :string, 1
    repeated :entity_type_names, :string, 2
  end
  add_message "google.cloud.dialogflow.v2beta1.BatchCreateEntitiesRequest" do
    optional :parent, :string, 1
    repeated :entities, :message, 2, "google.cloud.dialogflow.v2beta1.EntityType.Entity"
    optional :language_code, :string, 3
  end
  add_message "google.cloud.dialogflow.v2beta1.BatchUpdateEntitiesRequest" do
    optional :parent, :string, 1
    repeated :entities, :message, 2, "google.cloud.dialogflow.v2beta1.EntityType.Entity"
    optional :language_code, :string, 3
    optional :update_mask, :message, 4, "google.protobuf.FieldMask"
  end
  add_message "google.cloud.dialogflow.v2beta1.BatchDeleteEntitiesRequest" do
    optional :parent, :string, 1
    repeated :entity_values, :string, 2
    optional :language_code, :string, 3
  end
  add_message "google.cloud.dialogflow.v2beta1.EntityTypeBatch" do
    repeated :entity_types, :message, 1, "google.cloud.dialogflow.v2beta1.EntityType"
  end
end

module Google
  module Cloud
    module Dialogflow
      module V2beta1
        EntityType = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2beta1.EntityType").msgclass
        EntityType::Entity = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2beta1.EntityType.Entity").msgclass
        EntityType::Kind = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2beta1.EntityType.Kind").enummodule
        EntityType::AutoExpansionMode = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2beta1.EntityType.AutoExpansionMode").enummodule
        ListEntityTypesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2beta1.ListEntityTypesRequest").msgclass
        ListEntityTypesResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2beta1.ListEntityTypesResponse").msgclass
        GetEntityTypeRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2beta1.GetEntityTypeRequest").msgclass
        CreateEntityTypeRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2beta1.CreateEntityTypeRequest").msgclass
        UpdateEntityTypeRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2beta1.UpdateEntityTypeRequest").msgclass
        DeleteEntityTypeRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2beta1.DeleteEntityTypeRequest").msgclass
        BatchUpdateEntityTypesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2beta1.BatchUpdateEntityTypesRequest").msgclass
        BatchUpdateEntityTypesResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2beta1.BatchUpdateEntityTypesResponse").msgclass
        BatchDeleteEntityTypesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2beta1.BatchDeleteEntityTypesRequest").msgclass
        BatchCreateEntitiesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2beta1.BatchCreateEntitiesRequest").msgclass
        BatchUpdateEntitiesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2beta1.BatchUpdateEntitiesRequest").msgclass
        BatchDeleteEntitiesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2beta1.BatchDeleteEntitiesRequest").msgclass
        EntityTypeBatch = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2beta1.EntityTypeBatch").msgclass
      end
    end
  end
end