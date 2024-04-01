# To upgrade Gatekeeper package

- Check the latest [releases](https://github.com/open-policy-agent/gatekeeper/releases) and review release notes.

- Verify that this version is available on the [registry](https://registry1.dso.mil).

- Update the chart with KPT
```shell
kpt pkg update chart@gatekeeper-${chart.version} --strategy alpha-git-patch
```
- Review changes to make sure they are compatible with Big Bang

- Update `tests/test-values.yml` as necessary

- Update README, CHANGELOG, and bump chart version

# Testing new version

- Create `overrides/gatekeeper.yaml`
```
clusterAuditor
  enabled: true

gatekeeper:
  enabled: true
  sourceType: "git"
  git:
    repo: https://repo1.dso.mil/big-bang/product/packages/policy.git
    tag: Null
    branch: "renovate/ironbank"
```

- Deploy Big Bang and Gatekeeper to dev environment
```
helm upgrade -i bigbang ./bigbang/chart --create-namespace -n bigbang -f ./bigbang/chart/ingress-certs.yaml -f ./overrides/registry-values.yaml -f ./overrides/gatekeeper.yaml
```

- Verify all resources are successfully deployed
```
kubectl get all -n gatekeeper-system
```

- Review events for any errors
```
kubectl get events -n gatekeeper-system
```
