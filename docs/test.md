# OPA Gatekeeper Testing

[OPA Gatekeeper Testing](https://www.openpolicyagent.org/docs/latest/policy-testing/) is an important aspect of ensuring that the policies established will be enforced. These test policies are written in the native language [Rego](https://www.openpolicyagent.org/docs/latest/policy-language/). Policy testing enables 
you to verify the accuracy of policies and provides a framework to assists in writing test policies. Policy testing speeds up the development process of the new rules and reduces
rule modification time.

OPA Gatekeeper evaluates policies against all pod request in any namespace unless specified. Tests are expressed as standard [Rego](https://www.openpolicyagent.org/docs/latest/policy-language/) rules with a naming convention that prefixes the rule name
with test_. By default, opa test runs all subcommands, reports the number of tests executed, and displays all failed tests or errors. It also includes a [dryrun](https://www.infracloud.io/blogs/opa-and-gatekeeper/) functionality which enables testing a Constraint on a live cluster without enforcing it.
This functionality allows testing the Constraint without negatively impacting the cluster operations.

Click here for information on [Testing](https://www.openshift.com/blog/better-kubernetes-security-with-open-policy-agent-opa-part-2).


