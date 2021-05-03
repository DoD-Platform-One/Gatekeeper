# Best Practices

Best practices for [Rego](https://www.openpolicyagent.org/docs/latest/policy-language/) policies as listed by [Openshift](https://www.openshift.com/blog/better-kubernetes-security-with-open-policy-agent-opa-part-1) are:

- Rules are evaluated as logical AND statements.
- The order of rule statements does not matter.
- "true" and defined are usually synonymous. "false" is also usually synonymous with undefined.
- Rule evaluation short-circuits on reaching a statement that evaluates to undefined.

[Conftest](https://www.conftest.dev/) policies for deployments determined by [ITNEXT](https://itnext.io/enforcing-policies-in-kubernetes-c0f6192bd5ca):

- A deployment should have at least 2 replicas (for high availability).
- Containers in a deployment should have a liveness probe.
- Containers in a deployment should have a readiness probe.
- Containers in a deployment should define resources for both limits and requests.
- Deployment should have anti-affinity rules setup.

Best practices to consider when writing test coverage according to [OpenShift](https://www.openshift.com/blog/better-kubernetes-security-with-open-policy-agent-opa-part-2):

- What Kubernetes API resource fields does my policy query? 
- Are any of them optional?
- Can they appear more than once in a spec?
- How many positive test cases need to be written to ensure the policy will do as expected?
- How many negative test cases need to be written to ensure the policy will not produce undesired results?


