OPA Gatekeeper is a kubernetes implementation of OPA.  It differs from it by adding 
*  An extensible, parameterized policy library
*  Native Kubernetes CRs for instantiating the policy library (aka contraints)
*  Native Kubernetes CRDs for extending the policy library (aka "constraint templates")
*  Audit functionality 
*  Dry run to test policy without enformcement. 

To get more information about OPA Gatekeeper , please refer to this [link](https://github.com/open-policy-agent/gatekeeper)

To install and test just the Gatekeeper application, follow these steps 

### Prerequisite 
* A kubernetes cluster with cluster-admin access. To ease local develeopment and testing, install [k3d](https://k3d.io)
* Helm binary - follow these [installation instructions](https://helm.sh/docs/intro/install/)

### Procedure 
*  Clone the application repository 
   `git clone https://repo1.dsop.io/platform-one/big-bang/apps/core/policy.git`
*  Change into the policy directory and lint the chart  - make surre there are no errors. 
   `cd policy && helm lint chart`
*   Install the chart 
    `helm install policy chart    --debug`
*   Confirm the application installed with no issues. 
    ```
    kubectl get po -n gatekeeper-system                               
    NAME                                            READY   STATUS    RESTARTS   AGE
    gatekeeper-audit-7997ddc847-8pt5h               1/1     Running   0          28s
    gatekeeper-controller-manager-7fdfd7bfd-8g5sm   1/1     Running   0          28s
    gatekeeper-controller-manager-7fdfd7bfd-khc7j   1/1     Running   0          28s
    gatekeeper-controller-manager-7fdfd7bfd-nzzd8   1/1     Running   0          28s
    ```
