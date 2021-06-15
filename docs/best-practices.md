# Best Practices

Best practices tips for [Rego](https://www.openpolicyagent.org/docs/latest/policy-language/) are:

- Rules are evaluated as logical AND statements.
- The order of rule statements does not matter.
- "true" and defined are usually synonymous. "false" is also usually synonymous with undefined.
- Rule evaluation short-circuits on reaching a statement that evaluates to undefined.

[Conftest](https://www.conftest.dev/) policies for deployments:

- A deployment should have at least 2 replicas (for high availability).
- Containers in a deployment should have a liveness probe.
- Containers in a deployment should have a readiness probe.
- Containers in a deployment should define resources for both limits and requests.
- Deployment should have anti-affinity rules setup.

Best practices to consider when writing test coverages are:

- What Kubernetes API resource fields does my policy query? 
- Are any of them optional?
- Can they appear more than once in a spec?
- How many positive test cases need to be written to ensure the policy will do as expected?
- How many negative test cases need to be written to ensure the policy will not produce undesired results?


