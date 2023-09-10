# Deliverable (2)

Simple helm chart that will deploy the backend API to K8s cluster.

---

### Install the helm chart

```sh
    # Package the Helm chart
    $ helm package backend-api-chart

    # Install or upgrade the chart in your Kubernetes cluster
    $ helm install backend-api-release backend-api-chart-0.1.0.tgz

```

---
### Recommendations
- Use helm chart registry like [Chartmuseum](https://chartmuseum.com/) with [Chartmuseum-ui](https://github.com/chartmuseum/ui).
- Consume helm chart in declartive way instead of impartive one using [ArgoCD](https://argoproj.github.io/cd/) or enven [Helmfile](https://github.com/helmfile/helmfile).
- Add resource limits and liveness/readiness probes to deployment manifest
- Add more manifests such: HPA, Network Policy, Ingress ..etc.