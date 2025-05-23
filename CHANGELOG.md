# Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [3.19.1-bb.0] (2025-05-14)

### Changed

- gluon 0.5.15 -> 0.5.19
- registry1.dso.mil/ironbank/opensource/kubernetes/kubectl v1.32.3 -> v1.32.4
- registry1.dso.mil/ironbank/opensource/openpolicyagent/gatekeeper v3.18.2 -> v3.19.1

## [3.18.2-bb.5] 2025-04-04

### Changed

- Updated Gluon from 0.5.14 -> 0.5.15
- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl from v1.30.10 -> v1.32.3

## [3.18.2-bb.4] 2025-03-20

### Changed

- updating chart/README.md

## [3.18.2-bb.3] 2025-03-20

### Changed

- update chart/README.md to sync with upstream

## [3.18.2-bb.2] 2025-03-07

### Changed

- migrate renovate config

## [3.18.2-bb.1] 2025-02-21

### Changed

- Updated gluon from 0.5.12 to 0.5.14
- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl from v1.29.12 -> v1.30.10

## [3.18.2-bb.0] 2025-01-13

### Changed

- Updated ironbank/opensource/openpolicyagent/gatekeeper v3.18.1 -> 3.18.2
- Updated registry1.dso.mil/ironbank/opensource/openpolicyagent/gatekeeper v3.18.1 -> 3.18.2
- updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl from v1.29.8 -> v1.29.12

## [3.18.1-bb.0] 2024-12-17

### Changed

- Synced upstream chart changes to address missing labels
- Updated registry1.dso.mil/ironbank/opensource/openpolicyagent/gatekeeper v3.17.1 -> 3.18.1
- Updated gluon from 0.5.4 to 0.5.12

## [3.17.1-bb.2] 2024-10-21

### Changed

- `container.apparmor.security.beta.kubernetes.io` annotations are now deprecated replaced by the `securityContext.appArmorProfile` field for pods and containers
- Added the maintenance track annotation and badge

## [3.17.1-bb.1] 2024-09-27

### Changed

- Fixed linting

## [3.17.1-bb.0] 2024-09-27

### Changed

- Updated ironbank/opensource/openpolicyagent/gatekeeper v3.17.0 -> 3.17.1
- Updated registry1.dso.mil/ironbank/opensource/openpolicyagent/gatekeeper v3.17.0 -> 3.17.1
- Updated gluon from 0.5.3 to 0.5.4

## [3.17.0-bb.0] 2024-08-22

### Changed

- Updated ironbank/opensource/openpolicyagent/gatekeeper v3.16.3 -> v3.17.0
- Updated registry1.dso.mil/ironbank/opensource/openpolicyagent/gatekeeper v3.16.3 -> v3.17.0
- updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl from v1.29.6 -> v1.29.8
- Update gluon from 0.50 to 0.5.3

## [3.16.3-bb.1] 2024-07-11

### Changed

- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl v1.29.5 -> v1.29.6

## [3.16.3-bb.0] 2024-06-04

### Changed

- Updated ironbank/opensource/openpolicyagent/gatekeeper v3.16.2 -> v3.16.3
- Updated registry1.dso.mil/ironbank/opensource/openpolicyagent/gatekeeper v3.16.2 -> v3.16.3

## [3.16.2-bb.1] 2024-05-31

### Changed

- Revert disableAudit to false

## [3.16.2-bb.0] 2024-05-24

### Changed

- Updated Chart appVersion to v3.16.2

## [3.16.0-bb.1] 2024-05-24

### Changed

- Updated registry1.dso.mil/ironbank/opensource/openpolicyagent/gatekeeper `v3.16.0` -> `v3.16.2`
- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl `v1.29.4` -> `v1.29.5`

## [3.16.0-bb.0] 2024-05-14

### Changed

- Updated registry1.dso.mil/ironbank/opensource/openpolicyagent/gatekeeper `v3.15.1` -> `v3.16.0`
- Updated ironbank/opensource/openpolicyagent/gatekeeper `v3.15.1` -> `v3.16.0`
- Updated to latest gluon `0.4.9` -> `0.5.0`
- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl `v1.29.3` -> `v1.29.4`

## [3.15.0-bb.7] 2024-04-26

### Added

- Add support for additional custom network policies through the values yaml

## [3.15.0-bb.6] 2024-04-17

### Changed

- Updated gluon 0.4.8 -> 0.4.9
- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl v1.28.7 -> v1.29.3

## [3.15.0-bb.5] 2024-04-16

### Changed

- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl v1.28.6 -> v1.28.7
- Updated ironbank/opensource/openpolicyagent/gatekeeper v3.15.0 -> v3.15.1

## [3.15.0-bb.4] 2024-04-10

### Changed

- Changed cypress test yaml files for k8s 1.29 compliance

## [3.15.0-bb.3] 2024-04-01

### Changed

- Revert `K8sPSPSELinuxV2.yaml` and `selinux-policy` update.

## [3.15.0-bb.2] 2024-04-01

### Changed

- Updated Development Maintenance doc

## [3.15.0-bb.1] 2024-03-25

### Changed

- Updated `K8sPSPSELinuxV2.yaml` and `selinux-policy` violation.

## [3.15.0-bb.0] 2024-02-07

### Changed

- Updated gluon 0.4.7 -> 0.4.8
- Updated ironbank/opensource/openpolicyagent/gatekeeper v3.14.0 -> v3.15.0

## [3.14.0-bb.8] 2024-01-31

### Changed

- Updated `K8sPSPSeccomp` constraint to check for `spec.securityContext.seccompProfile.type` instead of `seccomp.security.alpha.kubernetes.io/pod` & `container.seccomp.security.alpha.kubernetes.io/[name]` as they were removed in Kubernetes 1.25

## [3.14.0-bb.7] 2024-01-29

### Changed

- Added keys to `allowedSELinuxOptions` to fix policy violation on empty `seLinuxOptions` in `values.yaml`
- Removed duplicate `image` property in `values.yaml`

## [3.14.0-bb.6] 2024-01-24

### Changed

- Added non-root securityContext to crd-cleanup containers

## [3.14.0-bb.5] 2024-01-22

### Changed

- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl v1.28.5 -> v1.28.6

## [3.14.0-bb.4] 2024-01-12

### Changed

- Updated gluon 0.4.6 -> 0.4.7
- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl v1.28.4 -> v1.28.5

## [3.14.0-bb.3] 2024-01-09

### Changed

- Updated gluon 0.4.4 -> 0.4.6
- Updated Chart appVersion to v3.14.0

## [3.14.0-bb.2] 2023-12-11

### Changed

- Updating OSCAL Component File.

## [3.14.0-bb.1] 2023-11-28

### Changed

- updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl v1.28.3 -> v1.28.4

## [3.14.0-bb.0] 2023-11-08

### Changed

- Updated ironbank/opensource/openpolicyagent/gatekeeper v3.13.3 -> v3.14.0
- Updated registry1.dso.mil/ironbank/opensource/openpolicyagent/gatekeeper v3.13.3 -> v3.14.0
- Updated registry1.dso.mil/ironbank/big-bang/base 2.0.0 -> 2.1.0

## [3.13.3-bb.3] 2023-11-02

### Changed

- Hardened `gatekeeper-admin` ServiceAccount with `automountServiceAccountToken: false` (overriden at Pod spec-level due to app requirements)
- Hardened ServiceAccounts in various `Jobs` with `automountServiceAccountToken: false` (overriden at Pod spec-level due to app requirements)
- Disabled bb tests by default

## [3.13.3-bb.2] 2023-11-02

### Changed

- Update gluon resource

## [3.13.3-bb.1] 2023-11-01

### Changed

- Updated gluon 0.4.3 -> 0.4.4

## [3.13.3-bb.0] 2023-11-01

### Changed

- Updated registry1.dso.mil/ironbank/opensource/openpolicyagent/gatekeeper v3.13.2 -> v3.13.3
- Updated ironbank/opensource/openpolicyagent/gatekeeper v3.13.2 -> v3.13.3
- Updated gluon 0.4.1 -> 0.4.3
- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl v1.28.2 -> v1.28.3

## [3.13.2-bb.0] 2023-10-11

### Changed

- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl 1.27.6 -> 1.28.2
- Updated registry1.dso.mil/ironbank/opensource/openpolicyagent/gatekeeper v3.13.0 -> v3.13.2

## [3.13.0-bb.2] 2023-10-11

### Removed

- OSCAL version update from 1.0.0 to 1.1.1

## [3.13.0-bb.1] 2023-10-02

### Removed

- Removed duplicate strategy

## [3.13.0-bb.0] 2023-09-19

### Changed

- Updated gluon 0.4.0 -> 0.4.1
- Updated ironbank/opensource/openpolicyagent/gatekeeper v3.12.0 -> v3.13.0
- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl 1.27.3 -> 1.27.6
- Updated registry1.dso.mil/ironbank/opensource/openpolicyagent/gatekeeper v3.12.0 -> v3.13.0

## [3.12.0-bb.4] 2023-06-20

### Changed

- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl v1.26.4 -> v1.27.3
- Updated to latest gluon 0.3.2 -> 0.4.0

## [3.12.0-bb.0] 2023-04-18

### Changed

- Updated ironbank/opensource/openpolicyagent/gatekeeper v3.11.0 -> v3.12.0.
- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl v1.26.3 -> v1.26.4
- Updated registry1.dso.mil/ironbank/opensource/openpolicyagent/gatekeeper v3.11.0 -> v3.12.0

## [3.11.0-bb.3] 2023-04-07

### Changed

- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl v1.26.2 -> v1.26.3

## [3.11.0-bb.2] 2023-03-09

### Changed

- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl v1.26.1 -> v1.26.2
- Updated to latest gluon 0.3.2

## [3.11.0-bb.1] 2023-02-23

### Changed

- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl v1.25.6 -> v1.26.1

## [3.11.1-bb.0]

### Changed

- Updated ironbank/opensource/openpolicyagent/gatekeeper v3.10.0 -> v3.11.0.
- Updated registry1.dso.mil/ironbank/opensource/kubernetes/kubectl v1.25.4 -> v1.25.6
- Updated registry1.dso.mil/ironbank/opensource/openpolicyagent/gatekeeper v3.10.0 -> v3.11.0

## [3.10.0-bb.2]

### Changed

- Updated to work on OpenShift out of the box

## [3.10.0-bb.1]

### Changed

- Updated to latest kubectl v1.25.4

## [3.10.0-bb.0]

### Changed

- Updated to latest kubectl v1.25.3
- Updated to latest gatekeeper v3.10.0
- Updated chart to v3.10.0

## [3.9.0-bb.3]

### Changed

- Updated to latest kubectl v1.25.2
- Updated to latest gluon 0.3.1

## [3.9.0-bb.2]

### Changed

- Updated to latest kubectl v1.24.4
- Updated to latest gluon 0.3.0

## [3.9.0-bb.1]

### Changed

- Remove old Ingress API's

## [3.9.0-bb.0]

### Changed

- Updated application and corresponding helm chart to v3.9.0

## [3.8.1-bb.5] - 2022-07-25

### Changed

- Removed `ProcMount` from Helm test to avoid conflicts with `PodSecurityPolicy` in some K8S distributions

## [3.8.1-bb.4] - 2022-07-22

### Changed

- Fixed PodDisruptionBudget to default to the `v1` API when neither `v1` or `v1beta1` are found.  This should prevent it from being flagged as deprecated.

## [3.8.1-bb.3]

### Changed

- Add Openshift SCCs

## [3.8.1-bb.2]

### Changed

- Re-disabled PSP due to issues fixed in RKE2

## [3.8.1-bb.1]

### Changed

- Updated to latest gluon 0.2.10

## [3.8.1-bb.0]

### Changed

- Updated to latest IB image 3.8.1
- Updated to latest gluon 0.2.9

## [3.8.0-bb.1]

### Changed

- Added OSCAL component file

## [3.8.0-bb.0]

### Changed

- Updated application and corresponding helm chart to v3.8.0

## [3.7.1-bb.0]

### Changed

- Updated application and corresponding helm chart to v3.7.1

## [3.7.0-bb.9]

### Changed

- Updated kubectl images to 1.22.2
- Updated renovate to monitor all images including `kubectl` test and crd images

## [3.7.0-bb.8]

### Changed

- Updated kubectl image

## [3.7.0-bb.7]

### Changed

- Reenabled PSP due to issues on RKE2

## [3.7.0-bb.6]

### Changed

- Disabled PSP due to deprecation warning

## [3.7.0-bb.5]

### Fixed

- Update Chart.yaml to follow new standardization for release automation
- Added renovate check to update new standardization

## [3.7.0-bb.4]

### Fixed

- Missing emptyDir in PSP, copied from upstream fix: <https://github.com/open-policy-agent/gatekeeper/commit/ae9e7dd1c8c5a23e748f0893468abe18218fa357>

## [3.7.0-bb.3]

### Changed

- Relocated bbtest values

## [3.7.0-bb.2]

### Changed

- Refactoring helm tests

## [3.7.0-bb.1]

### Fixed

- Fixed missing kpt updates from 3.7.0 upgrade

## [3.7.0-bb.0]

### Changed

- Updated application and corresponding helm chart to v3.7.0
- Updated kubectl image

## [3.6.0-bb.2]

### Changed

- Enable OPA to log denies by default

## [3.6.0-bb.1]

### Changed

- Set validatingWebhookTimeoutSeconds to 15 seconds.

## [3.6.0-bb.0]

### Changed

- Updated application and corresponding helm chart to v3.6.0

## [3.5.2-bb.2]

### Added

- ConstraintTemplate CRD v1 version. Storage set to false.

## [3.5.2-bb.1]

### Changed

- Updated upgrade job to remove orphan or disabled constraints.

## [3.5.2-bb.0]

### Changed

- Updated application and corresponding helm chart to v3.5.2

## [3.5.1-bb.16]

### Changed

- Changed resource limits and requirements for manager pods

## [3.5.1-bb.15]

### Changed

- Changed names of several Constraint Templates to workaround upgrade problem when changing CRD schema

## [3.5.1-bb.14]

### Changed

- Fixed problems with K8sPSPHostNetworkingPorts template
- Added fine grained control of excluded resources using namespace and resource name
- Added chart label to controller to force reroll on chart upgrades
- Renamed constraint template `K8sRequiredPod` to `K8sQualityOfService` and removed deprecated violations

### Removed

- Deprecated constraint templates removed
  - `K8sRequiredLabels` (use `K8sRequiredLabelValues` instead)
  - `K8sIstioInjection` (use `K8sRequiredLabelValues` instead )
  - `K8sPSPFSGroup` (use `K8sPSPAllowedUsers` instead)

## [3.5.1-bb.13]

### Changed

- Updated Post-upgrade job to use imagePullSecrets

## [3.5.1-bb.12]

### Changed

- Removed Big Bang overrides from default values.  Look in Big Bang repo under `chart/templates/gatekeeper/values.yaml` for overrides.

## [3.5.1-bb.11]

### Added

- Post-upgrade job to remove disabled constraints

### Changed

- Moved constraint kind and name to values.yaml

## [3.5.1-bb.10]

### Changed

- Removed rule for `unique-service-selector`

## [3.5.1-bb.9]

### Changed

- Changed the resource requests and limits to be equal

## [3.5.1-bb.8]

### Changed

- Excluded kube-system from all constraints through config
- Reverted values to no longer include kube-system as excluded

## [3.5.1-bb.7]

### Changed

- Set batch mode default to process 500 entries to reduce memory footprint
- Turned on match kind only to reduce memory footprint
- Increased audit interval to every 5 minutes

## [3.5.1-bb.6]

### Changed

- Updated constraint `no-host-namespace` enforcement to default deny
- Removed monitoring namespace exception for constraint `host-networking`

## [3.5.1-bb.5]

### Changed

- Remove duplicate keys in Chart.yaml

## [3.5.1-bb.4]

### Changed

- Updated constraint `https-only` enforcement to default deny

## [3.5.1-bb.3]

### Changed

- Updated constraint `volume-types` enforcement to default deny

## [3.5.1-bb.2]

### Changed

- Updated constraint `allowed-docker-registries` enforcement to default deny
- Excluded kube-system namespace for constraint `allowed-docker-registries`

## [3.5.1-bb.1]

### Changed

- Updated constraint `restrictedTaint` enforcement to default deny, added exception for `monitoring` namespace for to allow prometheus-node-exporter pods

## [3.5.1-bb.0]

### Changed

- Updated application and corresponding helm chart to v3.5.1

## [3.4.0-bb.19]

### Changed

- Disabled `app-armor-profiles` constraint by default

## [3.4.0-bb.18]

### Changed

- Align Cluster Auditor default constraint values to Kubernetes Pod Security Standard

## [3.4.0-bb.17]

### Changed

- Updated constraint `selinux-policy` enforcement to default deny
- added exception for logging namespace to selinux policy

## [3.4.0-bb.16]

### Changed

- Updated constraint `unique-ingress-hosts` enforcement to default deny

## [3.4.0-bb.15]

### Changed

- Updated constraint `host-networking` enforcement to default deny
- added exemption for monitoring namespace, this will prevent the `K8sPSPHostNetworkingPorts` from reporting a violation on monitoring namespace.

## [3.4.0-bb.14]

### Changed

- Updated constraint `no-privileged-containers` enforcement to default deny
- added exception for logging namespace to no-privileged-containers constraint

## [3.4.0-bb.13]

### Changed

- Updated constraint `banned-image-tags` enforcement to default deny
- added violation to constraintTemplate `k8sbannedimagetags` to not allow containers with no specified tag

## [3.4.0-bb.12]

### Changed

- Changed nosysctls policy to deny

## [3.4.0-bb.11]

### Changed

- Reverted constraint `pods-have-istio` enforcement to default dryrun
- Fixed podsHaveIstio disallowed regex sidecar.istio.io/inject to false and exclude istio-system namespace

## [3.4.0-bb.10]

### Changed

- Remove flexVolume and hostPath as default allowable for allowedFlexVolume constraint

## [3.4.0-bb.9]

### Changed

- Updated constraint  `pods-have-istio` enforcement to default deny

## [3.4.0-bb.8]

### Modified

- Modified the default enforcement action of allowed-flex-volumes to deny

## [3.4.0-bb.7]

### Added

- Added network policies to lock down egress/ingress

### Changed

- Move tests from bb-test-lib to gluon

## [3.4.0-bb.6]

### Modified

- Modified the default enforcement action of allowProcMount to deny.

## [3.4.0-bb.5]

### Changed

- Changed allowed-ips constraint to deny

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
  - Removal of Helm v2 support. See [upgrade instructions](https://github.com/open-policy-agent/gatekeeper/blob/master/charts/gatekeeper/README.md#upgrade-chart)
  - Experimental use of [Mutation](https://github.com/open-policy-agent/gatekeeper/blob/master/website/docs/mutation.md)
  - Use of helm specified namespace vs. hardcoded `gatekeeper-system`
- Update docs/ConstraintTemplates list with latest templates

## [3.3.0-bb.5]

### Changed

- Remove constraint templates K8sRequiredDeploymentLabels & K8sRequiredIronBankImages.
- The constraint templates are replaced with K8sRequiredLabelValues & K8sAllowedRepos

## [3.3.0-bb.4]

### Fixed

- Typo in K8sDenyServiceNodePort message
- Typo in K8sNoAnnotationValues message
- Missing "service" in gatekeeper config

## [3.3.0-bb.3]

### Changed

- More Constraint Templates

## [3.3.0-bb.2]

### Changed

- Added Constraint Templates

## [3.3.0-bb.1]

### Changed

- Added helm test

## [3.3.0-bb.0]

### Changed

- Added changelog
- update chart and image to v3.3.0
