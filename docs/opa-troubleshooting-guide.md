# Open Policy Agent Gatekeeper Troubleshooting Guide

## Debugging Tips

Here's a few tips to aid in the debugging process according to [Open Policy Agent](https://www.openpolicyagent.org/docs/latest/kubernetes-debugging/):

- Look at the openpolicyagent.org/policy-status annotation on ConfigMaps containing policies
- Investigate the kube-mgmt container logs for error messages
- Look for TLS errors in the opa container logs
- In the opa container logs, check for POST requests
- Make sue the proper namespaces are configured in the webhooks

Below is a link for other debugging tips:

- [OPA Gatekeeper Debugging](https://open-policy-agent.github.io/gatekeeper/website/docs/debug/)