#!/bin/bash
set -ex

echo "Wait for gatekeeper to be ready"
kubectl wait --for=condition=ready --timeout=120s pod -l app=gatekeeper  -n gatekeeper-system
sleep 60

echo "Create Constraint K8sRequiredLabelValues"
kubectl apply -f /yaml/config.yaml
sleep 60
kubectl describe K8sRequiredLabelValues pods-need-k8s-app-labels-test -n gatekeeper-system

echo "Check if test pod violation was recorded by gatekeeper"
sleep 60
kubectl get K8sRequiredLabelValues pods-need-k8s-app-labels-test -o jsonpath='{.status.violations[?(@.name == "gatekeeper-script-test")].namespace}' | grep gatekeeper-system || export VIOLATION="false"

echo "Delete Constraint K8sRequiredLabelValues"
kubectl delete -f /yaml/config.yaml

if [[ ${VIOLATION} == "false" ]]; then
  echo "Gatekeeper could not detect violation."
  exit 1
fi

echo "Test was successful"
