# To upgrade Gatekeeper package

1. Navigate to the Gatekeeper [upstream](https://github.com/open-policy-agent/gatekeeper/releases) and find the latest chart version that works with the image update.  
a. Verify that this version is available in the [registry](https://registry1.dso.mil).

2. From the top level of the repo run `kpt pkg update chart@{GIT TAG} --strategy alpha-git-patch` replacing `{GIT TAG}` with the tag you found in step one. For example: `kpt pkg update chart@v3.16.2 --strategy alpha-git-patch`.  
a. You may run into some merge conflicts, resolve these in the way that makes the most sense. In general, if something is a Big Bang addition you will want to keep it, otherwise go with the upstream change.  
b. Update `tests/test-values.yml` as necessary.

3. Increment the `-bb.#` to the version in `chart/Chart.yaml`. The `-bb-.#` should be incremented for patch updates. Whenever a major or minor version of the upstream occurs, increase the version and reset to `-bb.0`.

4. Update `CHANGELOG.md` adding an entry for the new version and noting all changes.

5. Generate the `README.md` updates by following the [guide in gluon](https://repo1.dso.mil/platform-one/big-bang/apps/library-charts/gluon/-/blob/master/docs/bb-package-readme.md).

6. Open an MR in "Draft" status ( or the Renovate created MR ) and validate that CI passes. This will perform a number of smoke tests against the package, but it is good to manually deploy to test some things that CI doesn't. Follow the steps below for manual testing. For automated CI testing follow the steps in [test-package-against-bb](https://repo1.dso.mil/big-bang/bigbang/-/blob/master/docs/developer/test-package-against-bb.md?ref_type=heads) and modify test-values with the following settings:
```yaml
  gatekeeper:
    enabled: true
    sourceType: "git"
    git:
      tag: null
      repo: "https://repo1.dso.mil/big-bang/product/packages/policy.git"
      path: "./chart"
      branch: "renovate/ironbank"
  ```


# Testing new version

- Create `overrides/gatekeeper.yaml`
```yaml
clusterAuditor:
  enabled: true

gatekeeper:
  enabled: true
  sourceType: "git"
  git:
    tag: null
    repo: "https://repo1.dso.mil/big-bang/product/packages/policy.git"
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
