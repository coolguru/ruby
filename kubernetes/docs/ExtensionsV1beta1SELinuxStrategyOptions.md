# Kubernetes::ExtensionsV1beta1SELinuxStrategyOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rule** | **String** | rule is the strategy that will dictate the allowable labels that may be set. | 
**se_linux_options** | [**V1SELinuxOptions**](V1SELinuxOptions.md) | seLinuxOptions required to run as; required for MustRunAs More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ | [optional] 


