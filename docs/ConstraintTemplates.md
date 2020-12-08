# Constraint Templates

These constraint templates come with OPA Gatekeeper:

## Required Labels

Identifies objects not having labels used for enforcing kubernetes apps labels

## Required Label Values

Identifies objects not having a valid value for a given label key.  Used for istio compliance

##  No Annotation Values

Identifies objects having an annotation that's not supported.  Used for istio compliance

## Required Probes

Identifies pods that don't have a health or liveness probe

## Allowed Repos

Identifies images that are pulled from a non-approved registry

## Container Limits

Identifies pods and containers that don't have a container limit

## PVC Limits

Identifies pvcs that are unusually large

## Isito Injection

## Protected Namespaces

## Regulated Resources

## Banned Image Tags

Identifies pods using `latest` image tag