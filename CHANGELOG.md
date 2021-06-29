# Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [3.4.0-bb.4]
### Changed
- Changed names of all constraints so that during upgrade, cluster-auditor will not delete them.

## [3.4.0-bb.3]
### Changed
- Updated CI values to only include 'default' namespace for deny actions
## [3.4.0-bb.2]
### Added
- `K8sDenySADefault` constraint template.
- `K8sDenySADefault` constraint
- Added `ServiceAccount` for good pod testing
### Changed
- Removed `K8sDenyServiceAccountTokentAutoMount` constraint template
- Updated test script to account for added SA.

## [3.4.0-bb.1]
### Added
- Constraints were moved from cluster-auditor to OPA gatekeeper package
### Changed
- Constraint template library split into individual files
- Constraints renamed to match values.yaml
- Constraint Templates renamed to match kind

## [3.4.0-bb.0]
### Added
- Common labels on Big Bang created components
### Changed
- Updated helm chart to upstream v3.4.0, which included the following notable items:
  - Removal of Helm v2 support.  See [upgrade instructions](https://github.com/open-policy-agent/gatekeeper/blob/master/charts/gatekeeper/README.md#upgrade-chart)
  - Experimental use of [Mutation](https://github.com/open-policy-agent/gatekeeper/blob/master/website/docs/mutation.md)
  - Use of helm specified namespace vs. hardcoded `gatekeeper-system`
- Update docs/ConstraintTemplates list with latest templates


## [3.3.0-bb.5] - 2021-06-14
Remove constraint templates K8sRequiredDeploymentLabels & K8sRequiredIronBankImages.
The constraint templates are replaced with K8sRequiredLabelValues & K8sAllowedRepos

## [3.3.0-bb.4] - 2021-06-11
### Fixed
- Typo in K8sDenyServiceNodePort message
- Typo in K8sNoAnnotationValues message
- Missing "service" in gatekeeper config

## [3.3.0-bb.3] - 2021-06-03
More Constraint Templates

## [3.3.0-bb.2] - 2021-05-27
Added Constraint Templates

## [3.3.0-bb.1] - 2021-05-17
Added helm test

## [3.3.0-bb.0] - 2021-04-09
Added changelog

update chart and image to v3.3.0
