<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# gatekeeper

![Version: 3.18.2-bb.2](https://img.shields.io/badge/Version-3.18.2--bb.2-informational?style=flat-square) ![AppVersion: v3.18.2](https://img.shields.io/badge/AppVersion-v3.18.2-informational?style=flat-square) ![Maintenance Track: bb_integrated](https://img.shields.io/badge/Maintenance_Track-bb_integrated-green?style=flat-square)

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
| image.crdRelease | string | `"v1.30.10"` |  |
| preInstall.crdRepository.image.repository | string | `"registry1.dso.mil/ironbank/opensource/kubernetes/kubectl"` |  |
| preInstall.crdRepository.image.tag | string | `"v1.30.10"` |  |
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
| postUpgrade.labelNamespace.image.tag | string | `"v1.30.10"` |  |
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
| postInstall.labelNamespace.image.tag | string | `"v1.30.10"` |  |
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
| preUninstall.deleteWebhookConfigurations.image.tag | string | `"v1.30.10"` |  |
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
| bbtests.scripts.image | string | `"registry1.dso.mil/ironbank/opensource/kubernetes/kubectl:v1.30.10"` |  |
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

_This file is programatically generated using `helm-docs` and some BigBang-specific templates. The `gluon` repository has [instructions for regenerating package READMEs](https://repo1.dso.mil/big-bang/product/packages/gluon/-/blob/master/docs/bb-package-readme.md)._
