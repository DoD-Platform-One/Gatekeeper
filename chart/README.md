<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# gatekeeper

![Version: 3.18.2-bb.0](https://img.shields.io/badge/Version-3.18.2--bb.0-informational?style=flat-square) ![AppVersion: v3.18.2](https://img.shields.io/badge/AppVersion-v3.18.2-informational?style=flat-square) ![Maintenance Track: bb_integrated](https://img.shields.io/badge/Maintenance_Track-bb_integrated-green?style=flat-square)

A Helm chart for Gatekeeper

## Upstream References

- <https://github.com/open-policy-agent/gatekeeper>
- <https://github.com/open-policy-agent/gatekeeper.git>

## Upstream Release Notes

This package has no upstream release note links on file. Please add some to [chart/Chart.yaml](chart/Chart.yaml) under `annotations.bigbang.dev/upstreamReleaseNotesMarkdown`.
Example:

```yaml
annotations:
  bigbang.dev/upstreamReleaseNotesMarkdown: |
    - [Find our upstream chart's CHANGELOG here](https://link-goes-here/CHANGELOG.md)
    - [and our upstream application release notes here](https://another-link-here/RELEASE_NOTES.md)
```

## Learn More

- [Application Overview](docs/overview.md)
- [Other Documentation](docs/)

## Pre-Requisites

- Kubernetes Cluster deployed
- Kubernetes config installed in `~/.kube/config`
- Helm installed

Install Helm

<https://helm.sh/docs/intro/install/>

## Deployment

- Clone down the repository
- cd into directory

```bash
helm install gatekeeper chart/
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| openshift | bool | `false` |  |
| replicas | int | `3` |  |
| revisionHistoryLimit | int | `10` |  |
| auditInterval | int | `60` |  |
| metricsBackends[0] | string | `"prometheus"` |  |
| auditMatchKindOnly | bool | `true` |  |
| constraintViolationsLimit | int | `1000` |  |
| auditFromCache | bool | `false` |  |
| disableMutation | bool | `true` |  |
| disableAudit | bool | `false` |  |
| disableValidatingWebhook | bool | `false` |  |
| validatingWebhookName | string | `"gatekeeper-validating-webhook-configuration"` |  |
| validatingWebhookTimeoutSeconds | int | `15` |  |
| validatingWebhookFailurePolicy | string | `"Ignore"` |  |
| validatingWebhookAnnotations | object | `{}` |  |
| validatingWebhookExemptNamespacesLabels | object | `{}` |  |
| validatingWebhookObjectSelector | object | `{}` |  |
| validatingWebhookMatchConditions | list | `[]` |  |
| validatingWebhookCheckIgnoreFailurePolicy | string | `"Fail"` |  |
| validatingWebhookCustomRules | object | `{}` |  |
| validatingWebhookURL | string | `nil` |  |
| enableDeleteOperations | bool | `false` |  |
| enableConnectOperations | bool | `false` |  |
| enableExternalData | bool | `true` |  |
| enableGeneratorResourceExpansion | bool | `true` |  |
| enableTLSHealthcheck | bool | `false` |  |
| maxServingThreads | int | `-1` |  |
| mutatingWebhookName | string | `"gatekeeper-mutating-webhook-configuration"` |  |
| mutatingWebhookFailurePolicy | string | `"Ignore"` |  |
| mutatingWebhookReinvocationPolicy | string | `"Never"` |  |
| mutatingWebhookAnnotations | object | `{}` |  |
| mutatingWebhookExemptNamespacesLabels | object | `{}` |  |
| mutatingWebhookObjectSelector | object | `{}` |  |
| mutatingWebhookMatchConditions | list | `[]` |  |
| mutatingWebhookTimeoutSeconds | int | `1` |  |
| mutatingWebhookCustomRules | object | `{}` |  |
| mutatingWebhookURL | string | `nil` |  |
| mutationAnnotations | bool | `false` |  |
| auditChunkSize | int | `500` |  |
| logLevel | string | `"INFO"` |  |
| logDenies | bool | `true` |  |
| logMutations | bool | `true` |  |
| emitAdmissionEvents | bool | `false` |  |
| emitAuditEvents | bool | `false` |  |
| admissionEventsInvolvedNamespace | bool | `false` |  |
| auditEventsInvolvedNamespace | bool | `false` |  |
| resourceQuota | bool | `true` |  |
| externaldataProviderResponseCacheTTL | string | `"3m"` |  |
| enableK8sNativeValidation | bool | `true` |  |
| image.repository | string | `"registry1.dso.mil/ironbank/opensource/openpolicyagent/gatekeeper"` |  |
| image.release | string | `"v3.18.2"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets[0].name | string | `"private-registry"` |  |
| image.crdRepository | string | `"registry1.dso.mil/ironbank/opensource/kubernetes/kubectl"` |  |
| image.crdRelease | string | `"v1.29.12"` |  |
| preInstall.crdRepository.image.repository | string | `"registry1.dso.mil/ironbank/opensource/kubernetes/kubectl"` |  |
| preInstall.crdRepository.image.tag | string | `"v1.29.12"` |  |
| preInstall.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| preInstall.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| preInstall.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| preInstall.securityContext.runAsGroup | int | `999` |  |
| preInstall.securityContext.runAsNonRoot | bool | `true` |  |
| preInstall.securityContext.runAsUser | int | `1000` |  |
| postUpgrade.labelNamespace.serviceAccount.name | string | `"gatekeeper-update-namespace-label-post-upgrade"` |  |
| postUpgrade.labelNamespace.serviceAccount.create | bool | `true` |  |
| postUpgrade.labelNamespace.enabled | bool | `false` |  |
| postUpgrade.labelNamespace.image.repository | string | `"registry1.dso.mil/ironbank/opensource/kubernetes/kubectl"` |  |
| postUpgrade.labelNamespace.image.tag | string | `"v1.29.12"` |  |
| postUpgrade.labelNamespace.image.pullPolicy | string | `"IfNotPresent"` |  |
| postUpgrade.labelNamespace.image.pullSecrets | list | `[]` |  |
| postUpgrade.labelNamespace.extraNamespaces | list | `[]` |  |
| postUpgrade.labelNamespace.podSecurity | list | `[]` |  |
| postUpgrade.labelNamespace.extraAnnotations | object | `{}` |  |
| postUpgrade.labelNamespace.priorityClassName | string | `""` |  |
| postUpgrade.affinity | object | `{}` |  |
| postUpgrade.tolerations | list | `[]` |  |
| postUpgrade.nodeSelector."kubernetes.io/os" | string | `"linux"` |  |
| postUpgrade.resources | object | `{}` |  |
| postUpgrade.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| postUpgrade.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| postUpgrade.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| postUpgrade.securityContext.runAsGroup | int | `999` |  |
| postUpgrade.securityContext.runAsNonRoot | bool | `true` |  |
| postUpgrade.securityContext.runAsUser | int | `1000` |  |
| postInstall.labelNamespace.serviceAccount.name | string | `"gatekeeper-update-namespace-label"` |  |
| postInstall.labelNamespace.serviceAccount.create | bool | `true` |  |
| postInstall.labelNamespace.enabled | bool | `true` |  |
| postInstall.labelNamespace.extraRules | list | `[]` |  |
| postInstall.labelNamespace.image.repository | string | `"registry1.dso.mil/ironbank/opensource/kubernetes/kubectl"` |  |
| postInstall.labelNamespace.image.tag | string | `"v1.29.12"` |  |
| postInstall.labelNamespace.image.pullPolicy | string | `"IfNotPresent"` |  |
| postInstall.labelNamespace.image.pullSecrets | list | `[]` |  |
| postInstall.labelNamespace.extraNamespaces | list | `[]` |  |
| postInstall.labelNamespace.podSecurity | list | `[]` |  |
| postInstall.labelNamespace.extraAnnotations | object | `{}` |  |
| postInstall.labelNamespace.priorityClassName | string | `""` |  |
| postInstall.probeWebhook.enabled | bool | `true` |  |
| postInstall.probeWebhook.image.repository | string | `"registry1.dso.mil/ironbank/big-bang/base"` |  |
| postInstall.probeWebhook.image.tag | string | `"2.1.0"` |  |
| postInstall.probeWebhook.image.pullPolicy | string | `"IfNotPresent"` |  |
| postInstall.probeWebhook.image.pullSecrets | list | `[]` |  |
| postInstall.probeWebhook.waitTimeout | int | `60` |  |
| postInstall.probeWebhook.httpTimeout | int | `2` |  |
| postInstall.probeWebhook.insecureHTTPS | bool | `false` |  |
| postInstall.probeWebhook.priorityClassName | string | `""` |  |
| postInstall.affinity | object | `{}` |  |
| postInstall.tolerations | list | `[]` |  |
| postInstall.nodeSelector."kubernetes.io/os" | string | `"linux"` |  |
| postInstall.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| postInstall.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| postInstall.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| postInstall.securityContext.runAsGroup | int | `999` |  |
| postInstall.securityContext.runAsNonRoot | bool | `true` |  |
| postInstall.securityContext.runAsUser | int | `1000` |  |
| preUninstall.deleteWebhookConfigurations.serviceAccount.name | string | `"gatekeeper-delete-webhook-configs"` |  |
| preUninstall.deleteWebhookConfigurations.serviceAccount.create | bool | `true` |  |
| preUninstall.deleteWebhookConfigurations.extraRules | list | `[]` |  |
| preUninstall.deleteWebhookConfigurations.enabled | bool | `false` |  |
| preUninstall.deleteWebhookConfigurations.image.repository | string | `"registry1.dso.mil/ironbank/opensource/kubernetes/kubectl"` |  |
| preUninstall.deleteWebhookConfigurations.image.tag | string | `"v1.29.12"` |  |
| preUninstall.deleteWebhookConfigurations.image.pullPolicy | string | `"IfNotPresent"` |  |
| preUninstall.deleteWebhookConfigurations.image.pullSecrets | list | `[]` |  |
| preUninstall.deleteWebhookConfigurations.priorityClassName | string | `""` |  |
| preUninstall.affinity | object | `{}` |  |
| preUninstall.tolerations | list | `[]` |  |
| preUninstall.nodeSelector."kubernetes.io/os" | string | `"linux"` |  |
| preUninstall.resources | object | `{}` |  |
| preUninstall.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| preUninstall.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| preUninstall.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| preUninstall.securityContext.runAsGroup | int | `999` |  |
| preUninstall.securityContext.runAsNonRoot | bool | `true` |  |
| preUninstall.securityContext.runAsUser | int | `1000` |  |
| podAnnotations."container.seccomp.security.alpha.kubernetes.io/manager" | string | `"runtime/default"` |  |
| auditPodAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podCountLimit | string | `"100"` |  |
| secretAnnotations | object | `{}` |  |
| enableRuntimeDefaultSeccompProfile | bool | `true` |  |
| controllerManager.serviceAccount.name | string | `"gatekeeper-admin"` |  |
| controllerManager.exemptNamespaces | list | `[]` |  |
| controllerManager.exemptNamespacePrefixes | list | `[]` |  |
| controllerManager.hostNetwork | bool | `false` |  |
| controllerManager.dnsPolicy | string | `"ClusterFirst"` |  |
| controllerManager.port | int | `8443` |  |
| controllerManager.metricsPort | int | `8888` |  |
| controllerManager.healthPort | int | `9090` |  |
| controllerManager.readinessTimeout | int | `1` |  |
| controllerManager.livenessTimeout | int | `1` |  |
| controllerManager.priorityClassName | string | `"system-cluster-critical"` |  |
| controllerManager.disableCertRotation | bool | `false` |  |
| controllerManager.tlsMinVersion | float | `1.3` |  |
| controllerManager.clientCertName | string | `""` |  |
| controllerManager.strategyType | string | `"RollingUpdate"` |  |
| controllerManager.strategyRollingUpdate | object | `{}` |  |
| controllerManager.podLabels | object | `{}` |  |
| controllerManager.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[0].key | string | `"gatekeeper.sh/operation"` |  |
| controllerManager.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[0].operator | string | `"In"` |  |
| controllerManager.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.labelSelector.matchExpressions[0].values[0] | string | `"webhook"` |  |
| controllerManager.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].podAffinityTerm.topologyKey | string | `"kubernetes.io/hostname"` |  |
| controllerManager.affinity.podAntiAffinity.preferredDuringSchedulingIgnoredDuringExecution[0].weight | int | `100` |  |
| controllerManager.topologySpreadConstraints | list | `[]` |  |
| controllerManager.tolerations | list | `[]` |  |
| controllerManager.nodeSelector."kubernetes.io/os" | string | `"linux"` |  |
| controllerManager.resources.limits.cpu | string | `"175m"` |  |
| controllerManager.resources.limits.memory | string | `"512Mi"` |  |
| controllerManager.resources.requests.cpu | string | `"175m"` |  |
| controllerManager.resources.requests.memory | string | `"512Mi"` |  |
| controllerManager.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| controllerManager.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| controllerManager.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| controllerManager.securityContext.runAsGroup | int | `999` |  |
| controllerManager.securityContext.runAsNonRoot | bool | `true` |  |
| controllerManager.securityContext.runAsUser | int | `1000` |  |
| controllerManager.podSecurityContext.fsGroup | int | `999` |  |
| controllerManager.podSecurityContext.supplementalGroups[0] | int | `999` |  |
| controllerManager.extraRules | list | `[]` |  |
| controllerManager.networkPolicy.enabled | bool | `false` |  |
| controllerManager.networkPolicy.ingress | list | `[]` |  |
| audit.serviceAccount.name | string | `"gatekeeper-admin"` |  |
| audit.enablePubsub | bool | `false` |  |
| audit.hostNetwork | bool | `false` |  |
| audit.dnsPolicy | string | `"ClusterFirst"` |  |
| audit.metricsPort | int | `8888` |  |
| audit.healthPort | int | `9090` |  |
| audit.readinessTimeout | int | `1` |  |
| audit.livenessTimeout | int | `1` |  |
| audit.priorityClassName | string | `"system-cluster-critical"` |  |
| audit.disableCertRotation | bool | `false` |  |
| audit.podLabels | object | `{}` |  |
| audit.affinity | object | `{}` |  |
| audit.tolerations | list | `[]` |  |
| audit.nodeSelector."kubernetes.io/os" | string | `"linux"` |  |
| audit.resources.limits.cpu | float | `1.2` |  |
| audit.resources.limits.memory | string | `"768Mi"` |  |
| audit.resources.requests.cpu | float | `1.2` |  |
| audit.resources.requests.memory | string | `"768Mi"` |  |
| audit.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| audit.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| audit.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| audit.securityContext.runAsGroup | int | `999` |  |
| audit.securityContext.runAsNonRoot | bool | `true` |  |
| audit.securityContext.runAsUser | int | `1000` |  |
| audit.podSecurityContext.fsGroup | int | `999` |  |
| audit.podSecurityContext.supplementalGroups[0] | int | `999` |  |
| audit.writeToRAMDisk | bool | `false` |  |
| audit.extraRules | list | `[]` |  |
| crds.affinity | object | `{}` |  |
| crds.tolerations | list | `[]` |  |
| crds.nodeSelector."kubernetes.io/os" | string | `"linux"` |  |
| crds.resources | object | `{}` |  |
| crds.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| crds.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| crds.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| crds.securityContext.runAsGroup | int | `65532` |  |
| crds.securityContext.runAsNonRoot | bool | `true` |  |
| crds.securityContext.runAsUser | int | `65532` |  |
| pdb.controllerManager.minAvailable | int | `1` |  |
| service | object | `{}` |  |
| disabledBuiltins[0] | string | `"{http.send}"` |  |
| psp.enabled | bool | `false` |  |
| upgradeCRDs.serviceAccount.create | bool | `true` |  |
| upgradeCRDs.serviceAccount.name | string | `"gatekeeper-admin-upgrade-crds"` |  |
| upgradeCRDs.enabled | bool | `true` |  |
| upgradeCRDs.extraRules | list | `[]` |  |
| upgradeCRDs.priorityClassName | string | `""` |  |
| cleanupCRDs.enabled | bool | `true` |  |
| cleanupCRDs.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| cleanupCRDs.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| cleanupCRDs.containerSecurityContext.readOnlyRootFilesystem | bool | `true` |  |
| cleanupCRDs.containerSecurityContext.runAsGroup | int | `999` |  |
| cleanupCRDs.containerSecurityContext.runAsNonRoot | bool | `true` |  |
| cleanupCRDs.containerSecurityContext.runAsUser | int | `1000` |  |
| cleanupCRDs.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| cleanupCRDs.securityContext.runAsGroup | int | `999` |  |
| cleanupCRDs.securityContext.runAsNonRoot | bool | `true` |  |
| cleanupCRDs.securityContext.runAsUser | int | `1000` |  |
| cleanupCRDs.securityContext.fsGroup | int | `999` |  |
| cleanupCRDs.securityContext.supplementalGroups[0] | int | `999` |  |
| rbac.create | bool | `true` |  |
| externalCertInjection.enabled | bool | `false` |  |
| externalCertInjection.secretName | string | `"gatekeeper-webhook-server-cert"` |  |
| violations.allowedAppArmorProfiles.enabled | bool | `false` |  |
| violations.allowedAppArmorProfiles.enforcementAction | string | `"dryrun"` |  |
| violations.allowedAppArmorProfiles.kind | string | `"K8sPSPAppArmor"` |  |
| violations.allowedAppArmorProfiles.name | string | `"allowed-app-armor-profiles"` |  |
| violations.allowedAppArmorProfiles.match | object | `{}` |  |
| violations.allowedAppArmorProfiles.parameters.allowedProfiles[0] | string | `"runtime/default"` |  |
| violations.allowedAppArmorProfiles.parameters.excludedResources | list | `[]` |  |
| violations.allowedCapabilities.enabled | bool | `true` |  |
| violations.allowedCapabilities.enforcementAction | string | `"dryrun"` |  |
| violations.allowedCapabilities.kind | string | `"K8sPSPCapabilities"` |  |
| violations.allowedCapabilities.name | string | `"allowed-capabilities"` |  |
| violations.allowedCapabilities.match | object | `{}` |  |
| violations.allowedCapabilities.parameters.allowedCapabilities | list | `[]` |  |
| violations.allowedCapabilities.parameters.requiredDropCapabilities[0] | string | `"all"` |  |
| violations.allowedCapabilities.parameters.excludedResources | list | `[]` |  |
| violations.allowedDockerRegistries.enabled | bool | `true` |  |
| violations.allowedDockerRegistries.enforcementAction | string | `"deny"` |  |
| violations.allowedDockerRegistries.kind | string | `"K8sAllowedRepos"` |  |
| violations.allowedDockerRegistries.name | string | `"allowed-docker-registries"` |  |
| violations.allowedDockerRegistries.match | object | `{}` |  |
| violations.allowedDockerRegistries.parameters.repos[0] | string | `"registry1.dso.mil"` |  |
| violations.allowedDockerRegistries.parameters.excludedResources | list | `[]` |  |
| violations.allowedFlexVolumes.enabled | bool | `true` |  |
| violations.allowedFlexVolumes.enforcementAction | string | `"deny"` |  |
| violations.allowedFlexVolumes.kind | string | `"K8sPSPFlexVolumes"` |  |
| violations.allowedFlexVolumes.name | string | `"allowed-flex-volumes"` |  |
| violations.allowedFlexVolumes.match | object | `{}` |  |
| violations.allowedFlexVolumes.parameters.allowedFlexVolumes | list | `[]` |  |
| violations.allowedFlexVolumes.parameters.excludedResources | list | `[]` |  |
| violations.allowedHostFilesystem.enabled | bool | `true` |  |
| violations.allowedHostFilesystem.enforcementAction | string | `"deny"` |  |
| violations.allowedHostFilesystem.kind | string | `"K8sPSPHostFilesystem"` |  |
| violations.allowedHostFilesystem.name | string | `"allowed-host-filesystem"` |  |
| violations.allowedHostFilesystem.match | object | `{}` |  |
| violations.allowedHostFilesystem.parameters.allowedHostPaths | list | `[]` |  |
| violations.allowedHostFilesystem.parameters.excludedResources | list | `[]` |  |
| violations.allowedIPs.enabled | bool | `true` |  |
| violations.allowedIPs.enforcementAction | string | `"deny"` |  |
| violations.allowedIPs.kind | string | `"K8sExternalIPs"` |  |
| violations.allowedIPs.name | string | `"allowed-ips"` |  |
| violations.allowedIPs.match | object | `{}` |  |
| violations.allowedIPs.parameters.allowedIPs | list | `[]` |  |
| violations.allowedIPs.parameters.excludedResources | list | `[]` |  |
| violations.allowedProcMount.enabled | bool | `true` |  |
| violations.allowedProcMount.enforcementAction | string | `"deny"` |  |
| violations.allowedProcMount.kind | string | `"K8sPSPProcMount"` |  |
| violations.allowedProcMount.name | string | `"allowed-proc-mount"` |  |
| violations.allowedProcMount.match | object | `{}` |  |
| violations.allowedProcMount.parameters.procMount | string | `"Default"` |  |
| violations.allowedProcMount.parameters.excludedResources | list | `[]` |  |
| violations.allowedSecCompProfiles.enabled | bool | `true` |  |
| violations.allowedSecCompProfiles.enforcementAction | string | `"dryrun"` |  |
| violations.allowedSecCompProfiles.kind | string | `"K8sPSPSeccomp"` |  |
| violations.allowedSecCompProfiles.name | string | `"allowed-sec-comp-profiles"` |  |
| violations.allowedSecCompProfiles.match | object | `{}` |  |
| violations.allowedSecCompProfiles.parameters.allowedProfiles[0] | string | `"runtime/default"` |  |
| violations.allowedSecCompProfiles.parameters.excludedResources | list | `[]` |  |
| violations.allowedUsers.enabled | bool | `true` |  |
| violations.allowedUsers.enforcementAction | string | `"dryrun"` |  |
| violations.allowedUsers.kind | string | `"K8sPSPAllowedUsers"` |  |
| violations.allowedUsers.name | string | `"allowed-users"` |  |
| violations.allowedUsers.match | object | `{}` |  |
| violations.allowedUsers.parameters.runAsUser.rule | string | `"MustRunAsNonRoot"` |  |
| violations.allowedUsers.parameters.fsGroup.rule | string | `"MustRunAs"` |  |
| violations.allowedUsers.parameters.fsGroup.ranges[0].min | int | `1000` |  |
| violations.allowedUsers.parameters.fsGroup.ranges[0].max | int | `65535` |  |
| violations.allowedUsers.parameters.runAsGroup.rule | string | `"MustRunAs"` |  |
| violations.allowedUsers.parameters.runAsGroup.ranges[0].min | int | `1000` |  |
| violations.allowedUsers.parameters.runAsGroup.ranges[0].max | int | `65535` |  |
| violations.allowedUsers.parameters.supplementalGroups.rule | string | `"MustRunAs"` |  |
| violations.allowedUsers.parameters.supplementalGroups.ranges[0].min | int | `1000` |  |
| violations.allowedUsers.parameters.supplementalGroups.ranges[0].max | int | `65535` |  |
| violations.allowedUsers.parameters.excludedResources | list | `[]` |  |
| violations.bannedImageTags.enabled | bool | `true` |  |
| violations.bannedImageTags.enforcementAction | string | `"deny"` |  |
| violations.bannedImageTags.kind | string | `"K8sBannedImageTags"` |  |
| violations.bannedImageTags.name | string | `"banned-image-tags"` |  |
| violations.bannedImageTags.match | object | `{}` |  |
| violations.bannedImageTags.parameters.tags[0] | string | `"latest"` |  |
| violations.bannedImageTags.parameters.excludedResources | list | `[]` |  |
| violations.blockNodePort.enabled | bool | `true` |  |
| violations.blockNodePort.enforcementAction | string | `"dryrun"` |  |
| violations.blockNodePort.kind | string | `"K8sBlockNodePort"` |  |
| violations.blockNodePort.name | string | `"block-node-ports"` |  |
| violations.blockNodePort.match | object | `{}` |  |
| violations.blockNodePort.parameters.excludedResources | list | `[]` |  |
| violations.containerRatio.enabled | bool | `true` |  |
| violations.containerRatio.enforcementAction | string | `"dryrun"` |  |
| violations.containerRatio.kind | string | `"K8sContainerRatios"` |  |
| violations.containerRatio.name | string | `"container-ratios"` |  |
| violations.containerRatio.match | object | `{}` |  |
| violations.containerRatio.parameters.ratio | string | `"2"` |  |
| violations.containerRatio.parameters.excludedResources | list | `[]` |  |
| violations.hostNetworking.enabled | bool | `true` |  |
| violations.hostNetworking.enforcementAction | string | `"deny"` |  |
| violations.hostNetworking.kind | string | `"K8sPSPHostNetworkingPorts"` |  |
| violations.hostNetworking.name | string | `"host-networking"` |  |
| violations.hostNetworking.match | object | `{}` |  |
| violations.hostNetworking.parameters.hostNetwork | bool | `false` |  |
| violations.hostNetworking.parameters.min | int | `0` |  |
| violations.hostNetworking.parameters.max | int | `0` |  |
| violations.hostNetworking.parameters.excludedResources | list | `[]` |  |
| violations.httpsOnly.enabled | bool | `true` |  |
| violations.httpsOnly.enforcementAction | string | `"deny"` |  |
| violations.httpsOnly.kind | string | `"K8sHttpsOnly2"` |  |
| violations.httpsOnly.name | string | `"https-only"` |  |
| violations.httpsOnly.match | object | `{}` |  |
| violations.httpsOnly.parameters.excludedResources | list | `[]` |  |
| violations.imageDigest.enabled | bool | `true` |  |
| violations.imageDigest.enforcementAction | string | `"dryrun"` |  |
| violations.imageDigest.kind | string | `"K8sImageDigests2"` |  |
| violations.imageDigest.name | string | `"image-digest"` |  |
| violations.imageDigest.match | object | `{}` |  |
| violations.imageDigest.parameters.excludedResources | list | `[]` |  |
| violations.namespacesHaveIstio.enabled | bool | `true` |  |
| violations.namespacesHaveIstio.enforcementAction | string | `"dryrun"` |  |
| violations.namespacesHaveIstio.kind | string | `"K8sRequiredLabelValues"` |  |
| violations.namespacesHaveIstio.name | string | `"namespaces-have-istio"` |  |
| violations.namespacesHaveIstio.match.namespaceSelector.matchExpressions[0].key | string | `"admission.gatekeeper.sh/ignore"` |  |
| violations.namespacesHaveIstio.match.namespaceSelector.matchExpressions[0].operator | string | `"DoesNotExist"` |  |
| violations.namespacesHaveIstio.parameters.labels[0].allowedRegex | string | `"^enabled"` |  |
| violations.namespacesHaveIstio.parameters.labels[0].key | string | `"istio-injection"` |  |
| violations.namespacesHaveIstio.parameters.excludedResources | list | `[]` |  |
| violations.noBigContainers.enabled | bool | `true` |  |
| violations.noBigContainers.enforcementAction | string | `"dryrun"` |  |
| violations.noBigContainers.kind | string | `"K8sContainerLimits"` |  |
| violations.noBigContainers.name | string | `"no-big-container"` |  |
| violations.noBigContainers.match | object | `{}` |  |
| violations.noBigContainers.parameters.cpu | string | `"2000m"` |  |
| violations.noBigContainers.parameters.memory | string | `"4G"` |  |
| violations.noBigContainers.parameters.excludedResources | list | `[]` |  |
| violations.noHostNamespace.enabled | bool | `true` |  |
| violations.noHostNamespace.enforcementAction | string | `"deny"` |  |
| violations.noHostNamespace.kind | string | `"K8sPSPHostNamespace2"` |  |
| violations.noHostNamespace.name | string | `"no-host-namespace"` |  |
| violations.noHostNamespace.match | object | `{}` |  |
| violations.noHostNamespace.parameters.excludedResources | list | `[]` |  |
| violations.noPrivilegedContainers.enabled | bool | `true` |  |
| violations.noPrivilegedContainers.enforcementAction | string | `"deny"` |  |
| violations.noPrivilegedContainers.kind | string | `"K8sPSPPrivilegedContainer2"` |  |
| violations.noPrivilegedContainers.name | string | `"no-privileged-containers"` |  |
| violations.noPrivilegedContainers.match | object | `{}` |  |
| violations.noPrivilegedContainers.parameters.excludedResources | list | `[]` |  |
| violations.noDefaultServiceAccount.enabled | bool | `true` |  |
| violations.noDefaultServiceAccount.enforcementAction | string | `"dryrun"` |  |
| violations.noDefaultServiceAccount.kind | string | `"K8sDenySADefault"` |  |
| violations.noDefaultServiceAccount.name | string | `"no-default-service-account"` |  |
| violations.noDefaultServiceAccount.match | object | `{}` |  |
| violations.noDefaultServiceAccount.parameters.excludedResources | list | `[]` |  |
| violations.noPrivilegedEscalation.enabled | bool | `true` |  |
| violations.noPrivilegedEscalation.enforcementAction | string | `"dryrun"` |  |
| violations.noPrivilegedEscalation.kind | string | `"K8sPSPAllowPrivilegeEscalationContainer2"` |  |
| violations.noPrivilegedEscalation.name | string | `"no-privileged-escalation"` |  |
| violations.noPrivilegedEscalation.match | object | `{}` |  |
| violations.noPrivilegedEscalation.parameters.excludedResources | list | `[]` |  |
| violations.noSysctls.enabled | bool | `true` |  |
| violations.noSysctls.enforcementAction | string | `"deny"` |  |
| violations.noSysctls.kind | string | `"K8sPSPForbiddenSysctls"` |  |
| violations.noSysctls.name | string | `"no-sysctls"` |  |
| violations.noSysctls.match | object | `{}` |  |
| violations.noSysctls.parameters.forbiddenSysctls[0] | string | `"*"` |  |
| violations.noSysctls.parameters.excludedResources | list | `[]` |  |
| violations.podsHaveIstio.enabled | bool | `true` |  |
| violations.podsHaveIstio.enforcementAction | string | `"dryrun"` |  |
| violations.podsHaveIstio.kind | string | `"K8sNoAnnotationValues"` |  |
| violations.podsHaveIstio.name | string | `"pods-have-istio"` |  |
| violations.podsHaveIstio.match | object | `{}` |  |
| violations.podsHaveIstio.parameters.annotations[0].disallowedRegex | string | `"^false"` |  |
| violations.podsHaveIstio.parameters.annotations[0].key | string | `"sidecar.istio.io/inject"` |  |
| violations.podsHaveIstio.parameters.excludedResources | list | `[]` |  |
| violations.readOnlyRoot.enabled | bool | `true` |  |
| violations.readOnlyRoot.enforcementAction | string | `"dryrun"` |  |
| violations.readOnlyRoot.kind | string | `"K8sPSPReadOnlyRootFilesystem2"` |  |
| violations.readOnlyRoot.name | string | `"read-only-root"` |  |
| violations.readOnlyRoot.match | object | `{}` |  |
| violations.readOnlyRoot.parameters.excludedResources | list | `[]` |  |
| violations.requiredLabels.enabled | bool | `true` |  |
| violations.requiredLabels.enforcementAction | string | `"dryrun"` |  |
| violations.requiredLabels.kind | string | `"K8sRequiredLabelValues"` |  |
| violations.requiredLabels.name | string | `"required-labels"` |  |
| violations.requiredLabels.match | object | `{}` |  |
| violations.requiredLabels.parameters.labels[0].allowedRegex | string | `""` |  |
| violations.requiredLabels.parameters.labels[0].key | string | `"app.kubernetes.io/name"` |  |
| violations.requiredLabels.parameters.labels[1].allowedRegex | string | `""` |  |
| violations.requiredLabels.parameters.labels[1].key | string | `"app.kubernetes.io/instance"` |  |
| violations.requiredLabels.parameters.labels[2].allowedRegex | string | `""` |  |
| violations.requiredLabels.parameters.labels[2].key | string | `"app.kubernetes.io/version"` |  |
| violations.requiredLabels.parameters.labels[3].allowedRegex | string | `""` |  |
| violations.requiredLabels.parameters.labels[3].key | string | `"app.kubernetes.io/component"` |  |
| violations.requiredLabels.parameters.labels[4].allowedRegex | string | `""` |  |
| violations.requiredLabels.parameters.labels[4].key | string | `"app.kubernetes.io/part-of"` |  |
| violations.requiredLabels.parameters.labels[5].allowedRegex | string | `""` |  |
| violations.requiredLabels.parameters.labels[5].key | string | `"app.kubernetes.io/managed-by"` |  |
| violations.requiredLabels.parameters.excludedResources | list | `[]` |  |
| violations.requiredProbes.enabled | bool | `true` |  |
| violations.requiredProbes.enforcementAction | string | `"dryrun"` |  |
| violations.requiredProbes.kind | string | `"K8sRequiredProbes"` |  |
| violations.requiredProbes.name | string | `"required-probes"` |  |
| violations.requiredProbes.match | object | `{}` |  |
| violations.requiredProbes.parameters.probeTypes[0] | string | `"tcpSocket"` |  |
| violations.requiredProbes.parameters.probeTypes[1] | string | `"httpGet"` |  |
| violations.requiredProbes.parameters.probeTypes[2] | string | `"exec"` |  |
| violations.requiredProbes.parameters.probes[0] | string | `"readinessProbe"` |  |
| violations.requiredProbes.parameters.probes[1] | string | `"livenessProbe"` |  |
| violations.requiredProbes.parameters.excludedResources | list | `[]` |  |
| violations.restrictedTaint.enabled | bool | `true` |  |
| violations.restrictedTaint.enforcementAction | string | `"deny"` |  |
| violations.restrictedTaint.kind | string | `"RestrictedTaintToleration"` |  |
| violations.restrictedTaint.name | string | `"restricted-taint"` |  |
| violations.restrictedTaint.match | object | `{}` |  |
| violations.restrictedTaint.parameters.allowGlobalToleration | bool | `false` |  |
| violations.restrictedTaint.parameters.restrictedTaint.effect | string | `"NoSchedule"` |  |
| violations.restrictedTaint.parameters.restrictedTaint.key | string | `"privileged"` |  |
| violations.restrictedTaint.parameters.restrictedTaint.value | string | `"true"` |  |
| violations.restrictedTaint.parameters.excludedResources | list | `[]` |  |
| violations.selinuxPolicy.enabled | bool | `true` |  |
| violations.selinuxPolicy.enforcementAction | string | `"deny"` |  |
| violations.selinuxPolicy.kind | string | `"K8sPSPSELinuxV2"` |  |
| violations.selinuxPolicy.name | string | `"selinux-policy"` |  |
| violations.selinuxPolicy.match | object | `{}` |  |
| violations.selinuxPolicy.parameters.allowedSELinuxOptions[0].level | string | `nil` |  |
| violations.selinuxPolicy.parameters.allowedSELinuxOptions[0].role | string | `nil` |  |
| violations.selinuxPolicy.parameters.allowedSELinuxOptions[0].type | string | `nil` |  |
| violations.selinuxPolicy.parameters.allowedSELinuxOptions[0].user | string | `nil` |  |
| violations.selinuxPolicy.parameters.excludedResources | list | `[]` |  |
| violations.uniqueIngressHost.enabled | bool | `true` |  |
| violations.uniqueIngressHost.enforcementAction | string | `"deny"` |  |
| violations.uniqueIngressHost.kind | string | `"K8sUniqueIngressHost"` |  |
| violations.uniqueIngressHost.name | string | `"unique-ingress-hosts"` |  |
| violations.uniqueIngressHost.match | object | `{}` |  |
| violations.uniqueIngressHost.parameters.excludedResources | list | `[]` |  |
| violations.volumeTypes.enabled | bool | `true` |  |
| violations.volumeTypes.enforcementAction | string | `"deny"` |  |
| violations.volumeTypes.kind | string | `"K8sPSPVolumeTypes"` |  |
| violations.volumeTypes.name | string | `"volume-types"` |  |
| violations.volumeTypes.match | object | `{}` |  |
| violations.volumeTypes.parameters.volumes[0] | string | `"configMap"` |  |
| violations.volumeTypes.parameters.volumes[1] | string | `"emptyDir"` |  |
| violations.volumeTypes.parameters.volumes[2] | string | `"projected"` |  |
| violations.volumeTypes.parameters.volumes[3] | string | `"secret"` |  |
| violations.volumeTypes.parameters.volumes[4] | string | `"downwardAPI"` |  |
| violations.volumeTypes.parameters.volumes[5] | string | `"persistentVolumeClaim"` |  |
| violations.volumeTypes.parameters.excludedResources | list | `[]` |  |
| monitoring.enabled | bool | `false` |  |
| networkPolicies.enabled | bool | `false` |  |
| networkPolicies.controlPlaneCidr | string | `"0.0.0.0/0"` |  |
| networkPolicies.additionalPolicies | list | `[]` |  |
| bbtests.enabled | bool | `true` |  |
| bbtests.scripts.image | string | `"registry1.dso.mil/ironbank/opensource/kubernetes/kubectl:v1.29.12"` |  |
| bbtests.scripts.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| bbtests.scripts.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| bbtests.scripts.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| bbtests.scripts.securityContext.runAsGroup | int | `999` |  |
| bbtests.scripts.securityContext.runAsNonRoot | bool | `true` |  |
| bbtests.scripts.securityContext.runAsUser | int | `1000` |  |
| bbtests.scripts.additionalVolumeMounts[0].name | string | `"{{ .Chart.Name }}-test-config"` |  |
| bbtests.scripts.additionalVolumeMounts[0].mountPath | string | `"/yaml"` |  |
| bbtests.scripts.additionalVolumeMounts[1].name | string | `"{{ .Chart.Name }}-kube-cache"` |  |
| bbtests.scripts.additionalVolumeMounts[1].mountPath | string | `"/.kube/cache"` |  |
| bbtests.scripts.additionalVolumes[0].name | string | `"{{ .Chart.Name }}-test-config"` |  |
| bbtests.scripts.additionalVolumes[0].configMap.name | string | `"{{ .Chart.Name }}-test-config"` |  |
| bbtests.scripts.additionalVolumes[1].name | string | `"{{ .Chart.Name }}-kube-cache"` |  |
| bbtests.scripts.additionalVolumes[1].emptyDir | object | `{}` |  |
| serviceAccount.gatekeeperAdmin.create | bool | `true` |  |

## Contributing

Please see the [contributing guide](./CONTRIBUTING.md) if you are interested in contributing.

---

```console
$ helm uninstall gatekeeper
$ helm install -n gatekeeper-system [RELEASE_NAME] gatekeeper/gatekeeper --create-namespace

```

Option 2:
Run the `helm_migrate.sh` script before installing the 3.4.0 or greater chart. This will remove the Helm secret for the
original release, while keeping all of the resources. It then updates the annotations of the resources so that the new
chart can import and manage them.

```console
$ helm_migrate.sh
$ helm install -n gatekeeper-system gatekeeper gatekeeper/gatekeeper
```

**Upgrading from >= v3.4.0**

```console
$ helm upgrade -n gatekeeper-system [RELEASE_NAME] gatekeeper/gatekeeper
```

_See [helm 2 to 3](https://helm.sh/docs/topics/v2_v3_migration/) for Helm 2 migration documentation._

## Exempting Namespace

The Helm chart automatically sets the Gatekeeper flag `--exempt-namespace={{ .Release.Namespace }}` in order to exempt
the namespace where the chart is installed, and adds the `admission.gatekeeper.sh/ignore` label to the namespace during
a post-install hook.

_See [Exempting Namespaces](https://open-policy-agent.github.io/gatekeeper/website/docs/exempt-namespaces) for more
information._

## Parameters

| Parameter                                                  | Description                                                                                                                                                                                                                                                                                    | Default                                                                                                                                                               |
|:-----------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| postInstall.labelNamespace.enabled                         | Add labels to the namespace during post install hooks                                                                                                                                                                                                                                          | `true`                                                                                                                                                                |
| postInstall.labelNamespace.extraNamespaces                 | The extra namespaces that need to have the label during post install hooks                                                                                                                                                                                                                     | `[]`                                                                                                                                                                  |
| postInstall.labelNamespace.extraAnnotations                | Extra annotations added to the post install Job                                                                                                                                                                                                                                                | `{}`                                                                                                                                                                  |
| postInstall.labelNamespace.image.repository                | Image with kubectl to label the namespace                                                                                                                                                                                                                                                      | `openpolicyagent/gatekeeper-crds`                                                                                                                                     |
| postInstall.labelNamespace.image.tag                       | Image tag                                                                                                                                                                                                                                                                                      | Current release version: `v3.19.0-beta.1`                                                                                                                             |
| postInstall.labelNamespace.image.pullPolicy                | Image pullPolicy                                                                                                                                                                                                                                                                               | `IfNotPresent`                                                                                                                                                        |
| postInstall.labelNamespace.image.pullSecrets               | Image pullSecrets                                                                                                                                                                                                                                                                              | `[]`                                                                                                                                                                  |
| postInstall.labelNamespace.extraRules                      | Extra rules for the gatekeeper-update-namespace-label Role                                                                                                                                                                                                                                     | `[]`                                                                                                                                                                  |
| postInstall.labelNamespace.priorityClassName               | Priority class name for gatekeeper-update-namespace-label Job                                                                                                                                                                                                                                  | ``                                                                                                                                                                    |
| postInstall.probeWebhook.enabled                           | Probe webhook API post install. When enabled along with `postInstall.labelNamespace.enabled`, this probe will run as part of `postInstall.labelNamespace` Job as an initContainer                                                                                                              | `true`                                                                                                                                                                |
| postInstall.probeWebhook.image.repository                  | Image with curl to probe the webhook API                                                                                                                                                                                                                                                       | `curlimages/curl`                                                                                                                                                     |
| postInstall.probeWebhook.image.tag                         | Image tag                                                                                                                                                                                                                                                                                      | `7.83.1`                                                                                                                                                              |
| postInstall.probeWebhook.image.pullPolicy                  | Image pullPolicy                                                                                                                                                                                                                                                                               | `IfNotPresent`                                                                                                                                                        |
| postInstall.probeWebhook.image.pullSecrets                 | Image pullSecrets                                                                                                                                                                                                                                                                              | `[]`                                                                                                                                                                  |
| postInstall.probeWebhook.waitTimeout                       | Total time to wait for the webhook API to become available                                                                                                                                                                                                                                     | `60`                                                                                                                                                                  |
| postInstall.probeWebhook.httpTimeout                       | HTTP client timeout                                                                                                                                                                                                                                                                            | `2`                                                                                                                                                                   |
| postInstall.probeWebhook.insecureHTTPS                     | Ignore server SSL certificate                                                                                                                                                                                                                                                                  | `false`                                                                                                                                                               |
| postInstall.probeWebhook.priorityClassName                 | Priority class name for gatekeeper-probe-webhook-post-install Job                                                                                                                                                                                                                              | ``                                                                                                                                                                    |
| postInstall.affinity                                       | The affinity to use for pod scheduling in postInstall hook jobs                                                                                                                                                                                                                                | `{}`                                                                                                                                                                  |
| postInstall.tolerations                                    | The tolerations to use for pod scheduling in postInstall hook jobs                                                                                                                                                                                                                             | `[]`                                                                                                                                                                  |
| postInstall.nodeSelector                                   | The node selector to use for pod scheduling in postInstall hook jobs                                                                                                                                                                                                                           | `kubernetes.io/os: linux`                                                                                                                                             |
| postInstall.resources                                      | The resource request/limits for the container image in postInstall hook jobs                                                                                                                                                                                                                   | `{}`                                                                                                                                                                  |
| postInstall.securityContext                                | Security context applied on the container                                                                                                                                                                                                                                                      | `{ "allowPrivilegeEscalation": false, "capabilities": "drop": [all], "readOnlyRootFilesystem": true, "runAsGroup": 999, "runAsNonRoot": true, "runAsUser": 1000 }`    |
| postUpgrade.labelNamespace.enabled                         | Add labels to the namespace during post upgrade hooks                                                                                                                                                                                                                                          | `false`                                                                                                                                                               |
| postUpgrade.labelNamespace.extraNamespaces                 | The extra namespaces that need to have the label during post upgrade hooks                                                                                                                                                                                                                     | `[]`                                                                                                                                                                  |
| postUpgrade.labelNamespace.extraAnnotations                | Extra annotations added to the post upgrade Job                                                                                                                                                                                                                                                | `{}`                                                                                                                                                                  |
| postUpgrade.labelNamespace.image.repository                | Image with kubectl to label the namespace                                                                                                                                                                                                                                                      | `openpolicyagent/gatekeeper-crds`                                                                                                                                     |
| postUpgrade.labelNamespace.image.tag                       | Image tag                                                                                                                                                                                                                                                                                      | Current release version: `v3.19.0-beta.1`                                                                                                                             |
| postUpgrade.labelNamespace.image.pullPolicy                | Image pullPolicy                                                                                                                                                                                                                                                                               | `IfNotPresent`                                                                                                                                                        |
| postUpgrade.labelNamespace.image.pullSecrets               | Image pullSecrets                                                                                                                                                                                                                                                                              | `[]`                                                                                                                                                                  |
| postUpgrade.labelNamespace.priorityClassName               | Priority class name for gatekeeper-update-namespace-label-post-upgrade Job                                                                                                                                                                                                                     | ``                                                                                                                                                                    |
| postUpgrade.affinity                                       | The affinity to use for pod scheduling in postUpgrade hook jobs                                                                                                                                                                                                                                | `{}`                                                                                                                                                                  |
| postUpgrade.tolerations                                    | The tolerations to use for pod scheduling in postUpgrade hook jobs                                                                                                                                                                                                                             | `[]`                                                                                                                                                                  |
| postUpgrade.nodeSelector                                   | The node selector to use for pod scheduling in postUpgrade hook jobs                                                                                                                                                                                                                           | `kubernetes.io/os: linux`                                                                                                                                             |
| postUpgrade.resources                                      | The resource request/limits for the container image in postUpgrade hook jobs                                                                                                                                                                                                                   | `{}`                                                                                                                                                                  |
| postUpgrade.securityContext                                | Security context applied on the container                                                                                                                                                                                                                                                      | `{ "allowPrivilegeEscalation": false, "capabilities": "drop": [all], "readOnlyRootFilesystem": true, "runAsGroup": 999, "runAsNonRoot": true, "runAsUser": 1000 }`    |
| preInstall.crdRepository.image.repository                  | Image with kubectl to update the CRDs. If not set, the `image.crdRepository` is used instead.                                                                                                                                                                                                  | `null`                                                                                                                                                                |
| preInstall.crdRepository.image.tag                         | Image tag                                                                                                                                                                                                                                                                                      | Current release version: `v3.19.0-beta.1`                                                                                                                             |
| preUninstall.deleteWebhookConfigurations.enabled           | Delete webhooks before gatekeeper itself is uninstalled                                                                                                                                                                                                                                        | `false`                                                                                                                                                               |
| preUninstall.deleteWebhookConfigurations.image.repository  | Image with kubectl to delete the webhooks                                                                                                                                                                                                                                                      | `openpolicyagent/gatekeeper-crds`                                                                                                                                     |
| preUninstall.deleteWebhookConfigurations.image.tag         | Image tag                                                                                                                                                                                                                                                                                      | Current release version: `v3.19.0-beta.1`                                                                                                                             |
| preUninstall.deleteWebhookConfigurations.image.pullPolicy  | Image pullPolicy                                                                                                                                                                                                                                                                               | `IfNotPresent`                                                                                                                                                        |
| preUninstall.deleteWebhookConfigurations.image.pullSecrets | Image pullSecrets                                                                                                                                                                                                                                                                              | `[]`                                                                                                                                                                  |
| preUninstall.deleteWebhookConfigurations.extraRules        | Extra rules for the gatekeeper-delete-webhook-configs Role                                                                                                                                                                                                                                     | `[]`                                                                                                                                                                  |
| preUninstall.deleteWebhookConfigurations.priorityClassName | Priority class name for gatekeeper-delete-webhook-configs Job                                                                                                                                                                                                                                  | ``                                                                                                                                                                    |
| preUninstall.affinity                                      | The affinity to use for pod scheduling in preUninstall hook jobs                                                                                                                                                                                                                               | `{}`                                                                                                                                                                  |
| preUninstall.tolerations                                   | The tolerations to use for pod scheduling in preUninstall hook jobs                                                                                                                                                                                                                            | `[]`                                                                                                                                                                  |
| preUninstall.nodeSelector                                  | The node selector to use for pod scheduling in preUninstall hook jobs                                                                                                                                                                                                                          | `kubernetes.io/os: linux`                                                                                                                                             |
| preUninstall.resources                                     | The resource request/limits for the container image in preUninstall hook jobs                                                                                                                                                                                                                  | `{}`                                                                                                                                                                  |
| preUninstall.securityContext                               | Security context applied on the container                                                                                                                                                                                                                                                      | `{ "allowPrivilegeEscalation": false, "capabilities": "drop": [all], "readOnlyRootFilesystem": true, "runAsGroup": 999, "runAsNonRoot": true, "runAsUser": 1000 }`    |
| psp.enabled                                                | Enabled PodSecurityPolicy                                                                                                                                                                                                                                                                      | `false`                                                                                                                                                               |
| upgradeCRDs.enabled                                        | Upgrade CRDs using pre-install/pre-upgrade hooks                                                                                                                                                                                                                                               | `true`                                                                                                                                                                |
| upgradeCRDs.extraRules                                     | Extra rules for the gatekeeper-admin-upgrade-crds ClusterRole                                                                                                                                                                                                                                  | `[]`                                                                                                                                                                  |
| upgradeCRDs.priorityClassName                              | Priority class name for gatekeeper-update-crds-hook Job                                                                                                                                                                                                                                        | ``                                                                                                                                                                    |
| crds.affinity                                              | The affinity to use for pod scheduling in crds hook jobs                                                                                                                                                                                                                                       | `{}`                                                                                                                                                                  |
| crds.tolerations                                           | The tolerations to use for pod scheduling in crds hook jobs                                                                                                                                                                                                                                    | `[]`                                                                                                                                                                  |
| crds.nodeSelector                                          | The node selector to use for pod scheduling in crds hook jobs                                                                                                                                                                                                                                  | `kubernetes.io/os: linux`                                                                                                                                             |
| crds.resources                                             | The resource request/limits for the container image in crds hook jobs                                                                                                                                                                                                                          | `{}`                                                                                                                                                                  |
| crds.securityContext                                       | Security context applied to the container                                                                                                                                                                                                                                                      | `{ "allowPrivilegeEscalation": false, "capabilities": "drop": [all], "readOnlyRootFilesystem": true, "runAsGroup": 65532, "runAsNonRoot": true, "runAsUser": 65532 }` |
| auditInterval                                              | The frequency with which audit is run                                                                                                                                                                                                                                                          | `60`                                                                                                                                                                  |
| constraintViolationsLimit                                  | The maximum # of audit violations reported on a constraint                                                                                                                                                                                                                                     | `20`                                                                                                                                                                  |
| auditFromCache                                             | Take the roster of resources to audit from the audit cache                                                                                                                                                                                                                                     | `false`                                                                                                                                                               |
| auditChunkSize                                             | (alpha) Chunk size for listing cluster resources for audit                                                                                                                                                                                                                             | `500`                                                                                                                                                                 |
| auditMatchKindOnly                                         | Only check resources of the kinds specified in all constraints defined in the cluster.                                                                                                                                                                                                         | `false`                                                                                                                                                               |
| disableAudit                                               | Disable audit controller                                                                                                                                                                                                                                                                       | `false`                                                                                                                                                               |
| disableMutation                                            | Disable mutation                                                                                                                                                                                                                                                                               | `false`                                                                                                                                                               |
| disableValidatingWebhook                                   | Disable the validating webhook                                                                                                                                                                                                                                                                 | `false`                                                                                                                                                               |
| validatingWebhookName                                      | The name of the `ValidatingWebhookConfiguration`                                                                                                                                                                                                                                               | `gatekeeper-validating-webhook-configuration`                                                                                                                         |
| validatingWebhookTimeoutSeconds                            | The timeout for the validating webhook in seconds                                                                                                                                                                                                                                              | `3`                                                                                                                                                                   |
| validatingWebhookFailurePolicy                             | The failurePolicy for the validating webhook                                                                                                                                                                                                                                                   | `Ignore`                                                                                                                                                              |
| validatingWebhookAnnotations                               | The annotations to add to the ValidatingWebhookConfiguration                                                                                                                                                                                                                                   | `{}`                                                                                                                                                                  |
| validatingWebhookObjectSelector                            | The label selector to further refine which namespaced resources will be selected by the webhook. Please note that an exemption label means users can circumvent Gatekeeper's validation webhook unless measures are taken to control how exemption labels can be set.                          | `{}`                                                                                                                                                                  |
| validatingWebhookMatchConditions                           | The match conditions written in CEL to further refine which resources will be selected by the webhook. All match conditions must evaluate to true for the webhook to be called                                                                                                                 | `[]`                                                                                                                                                                  |
| validatingWebhookCheckIgnoreFailurePolicy                  | The failurePolicy for the check-ignore-label validating webhook                                                                                                                                                                                                                                | `Fail`                                                                                                                                                                |
| validatingWebhookExemptNamespacesLabels                    | Additional namespace labels that will be exempt from the validating webhook. Please note that anyone in the cluster capable to manage namespaces will be able to skip all Gatekeeper validation by setting one of these labels for their namespace.                                            | `{}`                                                                                                                                                                  |
| validatingWebhookCustomRules                               | Custom rules for selecting which API resources trigger the webhook. Mutually exclusive with `enableDeleteOperations`. NOTE: If you change this, ensure all your constraints are still being enforced.                                                                                          | `{}`                                                                                                                                                                  |
| validatingWebhookURL                                       | Custom URL for Kubernetes API server to use to reach the validating webhook pod. If not set, the default of connecting via the kubernetes service endpoint is used.                                                                                                                            | `null`                                                                                                                                                                |
| enableDeleteOperations                                     | Enable validating webhook for delete operations. Does not work with `validatingWebhookCustomRules`                                                                                                                                                                                             | `false`                                                                                                                                                               |
| enableConnectOperations                                    | Enable validating webhook for connect operations.                                                                                                                                                                                                                                              | `false`                                                                                                                                                               |
| enableExternalData                                         | Enable external data                                                                                                                                                                                                                                                                           | `true`                                                                                                                                                                |
| enableGeneratorResourceExpansion                           | Enable generator resource expansion (beta feature)                                                                                                                                                                                                                                             | `true`                                                                                                                                                                |
| enableTLSHealthcheck                                       | Enable probing webhook API with certificate stored in certDir                                                                                                                                                                                                                                  | `false`                                                                                                                                                               |
| maxServingThreads                                          | Limit the number of concurrent calls the validation backend made by the validation webhook. -1 limits this value to GOMAXPROCS. Configuring this value may lower max RAM usage and limit CPU throttling, Tuning it can optimize serving capacity.                                              | `-1`                                                                                                                                                                  |
| metricsBackends                                            | Metrics exporters to use. Valid exporters are: `prometheus`, `stackdriver`, and `opentelemetry` starting from Gatekeeper 3.15                                                                                                                                                                  | `["prometheus"]`                                                                                                                                                      |
| mutatingWebhookName                                        | The name of the `MutatingWebhookConfiguration`                                                                                                                                                                                                                                                 | `gatekeeper-mutating-webhook-configuration`                                                                                                                           |
| mutatingWebhookFailurePolicy                               | The failurePolicy for the mutating webhook                                                                                                                                                                                                                                                     | `Ignore`                                                                                                                                                              |
| mutatingWebhookReinvocationPolicy                          | The reinvocationPolicy for the mutating webhook                                                                                                                                                                                                                                                | `Never`                                                                                                                                                               |
| mutatingWebhookAnnotations                                 | The annotations to add to the MutatingWebhookConfiguration                                                                                                                                                                                                                                     | `{}`                                                                                                                                                                  |
| mutatingWebhookExemptNamespacesLabels                      | Additional namespace labels that will be exempt from the mutating webhook. Please note that anyone in the cluster capable to manage namespaces will be able to skip all Gatekeeper validation by setting one of these labels for their namespace.                                              | `{}`                                                                                                                                                                  |
| mutatingWebhookObjectSelector                              | The label selector to further refine which namespaced resources will be selected by the webhook. Please note that an exemption label means users can circumvent Gatekeeper's mutation webhook unless measures are taken to control how exemption labels can be set.                            | `{}`                                                                                                                                                                  |
| mutatingWebhookMatchConditions                             | The match conditions written in CEL to further refine which resources will be selected by the webhook. All match conditions must evaluate to true for the webhook to be called                                                                                                                 | `[]`                                                                                                                                                                  |
| mutatingWebhookTimeoutSeconds                              | The timeout for the mutating webhook in seconds                                                                                                                                                                                                                                                | `3`                                                                                                                                                                   |
| mutatingWebhookCustomRules                                 | Custom rules for selecting which API resources trigger the webhook. NOTE: If you change this, ensure all your constraints are still being enforced.                                                                                                                                            | `{}`                                                                                                                                                                  |
| mutatingWebhookURL                                         | Custom URL for Kubernetes API server to use to reach the mutating webhook pod. If not set, the default of connecting via the kubernetes service endpoint is used.                                                                                                                              | `null`                                                                                                                                                                |
| emitAdmissionEvents                                        | (alpha) Emit K8s events in configurable namespace for admission violations                                                                                                                                                                                                              | `false`                                                                                                                                                               |
| emitAuditEvents                                            | (alpha) Emit K8s events in configurable namespace for audit violations                                                                                                                                                                                                                  | `false`                                                                                                                                                               |
| logStatsAdmission                                          | (alpha) Log stats for admission webhook                                                                                                                                                                                                                                                 | `false`                                                                                                                                                               |
| logStatsAudit                                              | (alpha) Log stats metrics for the audit run                                                                                                                                                                                                                                             | `false`                                                                                                                                                               |
| enableK8sNativeValidation                                  | Enable the K8s Native Validating driver to allow constraint templates to use rules written in VAP-style CEL                                                                                                                                                                                                                 | `true`                                                                                                                                                               |
| defaultCreateVAPForTemplates                                      | (alpha) Create VAP resource for template containing VAP-style CEL source. Allowed values are false: do not create Validating Admission Policy unless generateVAP: true is set on constraint template explicitly, true: create Validating Admission Policy unless generateVAP: false is set on constraint template explicitly.                                                                                                                                                                                                                  | `false`                                                                                                                                                               |
| defaultCreateVAPBindingForConstraints                             | (alpha) Create VAPBinding resource for constraint of the template containing VAP-style CEL source. Allowed values are false: do not create Validating Admission Policy Binding, true: create Validating Admission Policy Binding.                                                                                                                                                                                                                  | `false`                                                                                                                                                               |
| defaultWaitForVAPBGeneration                             | (alpha) Wait time in seconds before generating a ValidatingAdmissionPolicyBinding after a constraint CRD is created.                                                                                                                                                                                                                 | `30`                                                                                                                                                               |
| auditEventsInvolvedNamespace                               | Emit audit events for each violation in the involved objects namespace, the default (false) generates events in the namespace Gatekeeper is installed in. Audit events from cluster-scoped resources will continue to generate events in the namespace that Gatekeeper is installed in         | `false`                                                                                                                                                               |
| admissionEventsInvolvedNamespace                           | Emit admission events for each violation in the involved objects namespace, the default (false) generates events in the namespace Gatekeeper is installed in. Admission events from cluster-scoped resources will continue to generate events in the namespace that Gatekeeper is installed in | `false`                                                                                                                                                               |
| logDenies                                                  | Log detailed info on each deny                                                                                                                                                                                                                                                                 | `false`                                                                                                                                                               |
| logLevel                                                   | Minimum log level                                                                                                                                                                                                                                                                              | `INFO`                                                                                                                                                                |
| image.pullPolicy                                           | The image pull policy                                                                                                                                                                                                                                                                          | `IfNotPresent`                                                                                                                                                        |
| image.repository                                           | Image repository                                                                                                                                                                                                                                                                               | `openpolicyagent/gatekeeper`                                                                                                                                          |
| image.release                                              | The image release tag to use                                                                                                                                                                                                                                                                   | Current release version: `v3.19.0-beta.1`                                                                                                                             |
| image.pullSecrets                                          | Specify an array of imagePullSecrets                                                                                                                                                                                                                                                           | `[]`                                                                                                                                                                  |
| resources                                                  | The resource request/limits for the container image                                                                                                                                                                                                                                            | limits: 1 CPU, 512Mi, requests: 100mCPU, 256Mi                                                                                                                        |
| nodeSelector                                               | The node selector to use for pod scheduling                                                                                                                                                                                                                                                    | `kubernetes.io/os: linux`                                                                                                                                             |
| controllerManager.podLabels                                | The labels to add to the controller manager pod                                                                                                                                                                                                                                                       | `{}`                                                                                                                                                                  |
| controllerManager.affinity                                 | The node affinity to use for controller manager pod scheduling                                                                                                                                                                                                                                 | `{}`                                                                                                                                                                  |
| controllerManager.topologySpreadConstraints                | The topology spread constraints to use for controller manager pod scheduling                                                                                                                                                                                                                   | `[]`                                                                                                                                                                  |
| controllerManager.tolerations                              | The tolerations to use for controller manager pod scheduling                                                                                                                                                                                                                                   | `[]`                                                                                                                                                                  |
| controllerManager.healthPort                               | Health port for controller manager                                                                                                                                                                                                                                                             | `9090`                                                                                                                                                                |
| controllerManager.port                                     | Webhook-server port for controller manager                                                                                                                                                                                                                                                     | `8443`                                                                                                                                                                |
| controllerManager.metricsPort                              | Metrics port for controller manager                                                                                                                                                                                                                                                            | `8888`                                                                                                                                                                |
| controllerManager.readinessTimeout                         | Timeout in seconds for the controller manager's readiness probe                                                                                                                                                                                                                                | `1`                                                                                                                                                                   |
| controllerManager.livenessTimeout                          | Timeout in seconds for the controller manager's liveness probe                                                                                                                                                                                                                                 | `1`                                                                                                                                                                   |
| controllerManager.logLevel                                 | The minimum log level for the controller manager, takes precedence over `logLevel` when specified                                                                                                                                                                                              | `null`                                                                                                                                                                |
| controllerManager.priorityClassName                        | Priority class name for controller manager                                                                                                                                                                                                                                                     | `system-cluster-critical`                                                                                                                                             |
| controllerManager.podSecurityContext                       | Security context on pod level for controller manager                                                                                                                                                                                                                                           | {fsGroup: 999, suplementalGroups: [999]}                                                                                                                              |
| controllerManager.exemptNamespaces                         | The exact namespaces to exempt by the admission webhook                                                                                                                                                                                                                                        | `[]`                                                                                                                                                                  |
| controllerManager.exemptNamespacePrefixes                  | The namespace prefixes to exempt by the admission webhook                                                                                                                                                                                                                                      | `[]`                                                                                                                                                                  |
| controllerManager.hostNetwork                              | Enables controllerManager to be deployed on hostNetwork                                                                                                                                                                                                                                        | `false`                                                                                                                                                               |
| controllerManager.dnsPolicy                                | Set the dnsPolicy for controllerManager pods                                                                                                                                                                                                                                                   | `ClusterFirst`                                                                                                                                                        |
| controllerManager.securityContext                          | Security context applied on the container                                                                                                                                                                                                                                                      | `{ "allowPrivilegeEscalation": false, "capabilities": "drop": [all], "readOnlyRootFilesystem": true, "runAsGroup": 999, "runAsNonRoot": true, "runAsUser": 1000 }`    |
| controllerManager.tlsMinVersion                            | Set the minimum supported TLS version for validating and mutating webhook servers                                                                                                                                                                                                              | `1.3`                                                                                                                                                                 |
| controllerManager.extraRules                               | Extra rules for the gatekeeper-manager-role Role                                                                                                                                                                                                                                               | `[]`                                                                                                                                                                  |
| controllerManager.networkPolicy.enabled                    | Should a network policy for the controller manager be created                                                                                                                                                                                                                                  | `false`                                                                                                                                                               |
| controllerManager.networkPolicy.ingress                    | Additional ingress rules to be added to the controller manager network policy                                                                                                                                                                                                                  | `{}`                                                                                                                                                                  |
| controllerManager.strategyType                             | The strategy type to use for Controller Manager deployment                                                                                                                                                                                                                                     | `RollingUpdate`                                                                                                                                                       |
| controllerManager.strategyRollingUpdate                    | [RollingUpdate](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#rolling-update-deployment) configuration for Controller Manager deployment                                                                                                                               | `{}`                                                                                                                                                                  |
| audit.podLabels                                            | The labels to add to the audit pod                                                                                                                                                                                                                                                       | `{}`                                                                                                                                                                  |
| audit.affinity                                             | The node affinity to use for audit pod scheduling                                                                                                                                                                                                                                              | `{}`                                                                                                                                                                  |
| audit.topologySpreadConstraints                            | The topology spread constraints to use for audit pod scheduling                                                                                                                                                                                                                                | `[]`                                                                                                                                                                  |
| audit.tolerations                                          | The tolerations to use for audit pod scheduling                                                                                                                                                                                                                                                | `[]`                                                                                                                                                                  |
| audit.priorityClassName                                    | Priority class name for audit controller                                                                                                                                                                                                                                                       | `system-cluster-critical`                                                                                                                                             |
| audit.podSecurityContext                                   | Security context for audit on pod level                                                                                                                                                                                                                                                        | {fsGroup: 999, suplementalGroups: [999]}                                                                                                                              |
| audit.hostNetwork                                          | Enables audit to be deployed on hostNetwork                                                                                                                                                                                                                                                    | `false`                                                                                                                                                               |
| audit.dnsPolicy                                            | Set the dnsPolicy for audit pods                                                                                                                                                                                                                                                               | `ClusterFirst`                                                                                                                                                        |
| audit.securityContext                                      | Security context applied on the container                                                                                                                                                                                                                                                      | `{ "allowPrivilegeEscalation": false, "capabilities": "drop": [all], "readOnlyRootFilesystem": true, "runAsGroup": 999, "runAsNonRoot": true, "runAsUser": 1000 }`    |
| audit.healthPort                                           | Health port for audit                                                                                                                                                                                                                                                                          | `9090`                                                                                                                                                                |
| audit.metricsPort                                          | Metrics port for audit                                                                                                                                                                                                                                                                         | `8888`                                                                                                                                                                |
| audit.readinessTimeout                                     | Timeout in seconds for audit's readiness probe                                                                                                                                                                                                                                                 | `1`                                                                                                                                                                   |
| audit.livenessTimeout                                      | Timeout in seconds for the audit's liveness probe                                                                                                                                                                                                                                              | `1`                                                                                                                                                                   |
| audit.logLevel                                             | The minimum log level for audit, takes precedence over `logLevel` when specified                                                                                                                                                                                                               | `null`                                                                                                                                                                |
| audit.enablePubsub                                         | (alpha) Enabled pubsub to publish messages                                                                                                                                                                                                                                                     | `false`                                                                                                                                                               |
| audit.connection                                           | (alpha) Connection name for publishing audit violation messages                                                                                                                                                                                                                                | `audit-connection`                                                                                                                                                    |
| audit.channel                                              | (alpha) Channel name for publishing audit violation messages                                                                                                                                                                                                                                   | `audit-channel`                                                                                                                                                       |
| replicas                                                   | The number of Gatekeeper replicas to deploy for the webhook                                                                                                                                                                                                                                    | `3`                                                                                                                                                                   |
| podAnnotations                                             | The annotations to add to the Gatekeeper pods                                                                                                                                                                                                                                                  | `container.seccomp.security.alpha.kubernetes.io/manager: runtime/default`                                                                                             |
| podLabels                                                  | The labels to add to the Gatekeeper pods                                                                                                                                                                                                                                                       | `{}`                                                                                                                                                                  |
| podCountLimit                                              | The maximum number of Gatekeeper pods to run                                                                                                                                                                                                                                                   | `100`                                                                                                                                                                 |
| secretAnnotations                                          | The annotations to add to the Gatekeeper secrets                                                                                                                                                                                                                                               | `{}`                                                                                                                                                                  |
| pdb.controllerManager.minAvailable                         | The number of controller manager pods that must still be available after an eviction                                                                                                                                                                                                           | `1`                                                                                                                                                                   |
| service.type                                               | Service type                                                                                                                                                                                                                                                                                   | `ClusterIP`                                                                                                                                                           |
| service.loadBalancerIP                                     | The IP address of LoadBalancer service                                                                                                                                                                                                                                                         | ``                                                                                                                                                                    |
| service.healthzPort                                        | Service port to gatekeeper Webhook health port                                                                                                                                                                                                                                                 | `9090`                                                                                                                                                                |
| rbac.create                                                | Enable the creation of RBAC resources                                                                                                                                                                                                                                                          | `true`                                                                                                                                                                |
| externalCertInjection.enabled                              | Enable the injection of an external certificate. This disables automatic certificate generation and rotation                                                                                                                                                                                   | `false`                                                                                                                                                               |
| externalCertInjection.secretName                           | Name of secret for injected certificate                                                                                                                                                                                                                                                        | `gatekeeper-webhook-server-cert`                                                                                                                                      |
| externaldataProviderResponseCacheTTL                       | TTL for the external data provider response cache. Specify the duration in 'h', 'm', or 's' for hours, minutes, or seconds respectively.                                                                                                                                                       | `3m`                                                                                                                                                                  |

## Contributing Changes

Please refer
to [Contributing to Helm Chart](https://open-policy-agent.github.io/gatekeeper/website/docs/help#contributing-to-helm-chart)
for modifying the Helm chart.
