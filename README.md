# Policy

Policy enforcement with [OPA Gatekeeper](https://github.com/open-policy-agent/gatekeeper).

Default deployment (`deploy/`) is absent of `Constraints`.  Instead, `ConstraintTemplates` and `Configs` are provided in addition to `OPA-Gatekeeper` that are known settings to work with the remaining [core](https://repo1.dsop.io/platform-one/big-bang/bootstraps/bigbang-bootstrap) P1 components.

For enabling constraints, ensure that `deploy/contstraints/core` is deployed.
