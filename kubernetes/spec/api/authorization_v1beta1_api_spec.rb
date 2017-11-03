=begin
#Kubernetes

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.8.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for Kubernetes::AuthorizationV1beta1Api
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthorizationV1beta1Api' do
  before do
    # run before each test
    @instance = Kubernetes::AuthorizationV1beta1Api.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthorizationV1beta1Api' do
    it 'should create an instance of AuthorizationV1beta1Api' do
      expect(@instance).to be_instance_of(Kubernetes::AuthorizationV1beta1Api)
    end
  end

  # unit tests for create_namespaced_local_subject_access_review
  # 
  # create a LocalSubjectAccessReview
  # @param namespace object name and auth scope, such as for teams and projects
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :pretty If &#39;true&#39;, then the output is pretty printed.
  # @return [V1beta1LocalSubjectAccessReview]
  describe 'create_namespaced_local_subject_access_review test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_self_subject_access_review
  # 
  # create a SelfSubjectAccessReview
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :pretty If &#39;true&#39;, then the output is pretty printed.
  # @return [V1beta1SelfSubjectAccessReview]
  describe 'create_self_subject_access_review test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_self_subject_rules_review
  # 
  # create a SelfSubjectRulesReview
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :pretty If &#39;true&#39;, then the output is pretty printed.
  # @return [V1beta1SelfSubjectRulesReview]
  describe 'create_self_subject_rules_review test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_subject_access_review
  # 
  # create a SubjectAccessReview
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :pretty If &#39;true&#39;, then the output is pretty printed.
  # @return [V1beta1SubjectAccessReview]
  describe 'create_subject_access_review test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_api_resources
  # 
  # get available resources
  # @param [Hash] opts the optional parameters
  # @return [V1APIResourceList]
  describe 'get_api_resources test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
