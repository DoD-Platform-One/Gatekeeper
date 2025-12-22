# To upgrade Gatekeeper package

1. Navigate to the Gatekeeper [upstream](https://github.com/open-policy-agent/gatekeeper/releases) and find the latest chart version that works with the image update.  
a. Verify that this version is available in the [registry](https://registry1.dso.mil).

2. Update the chart to the upstream tag by bumping dependencies in `chart/Chart.yaml` and running `helm dependency update chart` (passthrough pattern).  
a. Resolve merge conflicts by keeping Big Bang additions and otherwise preferring upstream changes. These are expected to be minimal.
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

## Helm unit tests

Chart assertions live under `chart/unittests/`. After installing the [helm-unittest plugin](https://github.com/helm-unittest/helm-unittest) (`helm plugin install https://github.com/helm-unittest/helm-unittest`), run the suite from the chart directory:

```
cd chart && helm unittest . -f "unittests/**/*_test.yaml"
```

Run these tests locally before opening an MR so we continuously verify Big Bang’s wrapper behavior against the upstream dependency.
