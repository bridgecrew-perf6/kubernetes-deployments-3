# previously you must logged in registry.container.registry.container.acme.com/k8s.com

docker tag docker.io/calico/cni:v3.21.2 registry.container.registry.container.acme.com/k8s.com/k8s/calico/cni:v3.21.2
docker tag docker.io/calico/kube-controllers:v3.21.2 registry.container.registry.container.acme.com/k8s.com/k8s/calico/kube-controllers:v3.21.2
docker tag docker.io/calico/node:v3.21.2 registry.container.registry.container.acme.com/k8s.com/k8s/calico/node:v3.21.2
docker tag k8s.gcr.io/coredns/coredns:v1.7.0 registry.container.registry.container.acme.com/k8s.com/k8s/coredns/coredns:v1.7.0
docker tag quay.io/k0sproject/apiserver-network-proxy-agent:0.0.27-k0s1 registry.container.registry.container.acme.com/k8s.com/k8s/k0sproject/apiserver-network-proxy-agent:0.0.27-k0s1
docker tag k8s.gcr.io/kube-proxy:v1.23.3 registry.container.registry.container.acme.com/k8s.com/k8s/kube-proxy:v1.23.3
docker tag docker.io/cloudnativelabs/kube-router:v1.3.2 registry.container.registry.container.acme.com/k8s.com/k8s/cloudnativelabs/kube-router:v1.3.2
docker tag quay.io/k0sproject/cni-node:0.1.0 registry.container.registry.container.acme.com/k8s.com/k8s/k0sproject/cni-node:0.1.0
docker tag k8s.gcr.io/metrics-server/metrics-server:v0.5.2 registry.container.registry.container.acme.com/k8s.com/k8s/metrics-server/metrics-server:v0.5.2
docker tag openebs/node-disk-manager:1.8.0 registry.container.registry.container.acme.com/k8s.com/k8s/openebs/node-disk-manager:1.8.0
docker tag openebs/provisioner-localpv:3.1.0 registry.container.registry.container.acme.com/k8s.com/k8s/openebs/provisioner-localpv:3.1.0
docker tag openebs/node-disk-operator:1.8.0 registry.container.registry.container.acme.com/k8s.com/k8s/openebs/node-disk-operator:1.8.0
docker tag openebs/linux-utils:3.1.0 registry.container.registry.container.acme.com/k8s.com/k8s/openebs/linux-utils:3.1.0
docker tag openebs/node-disk-exporter:1.8.0 registry.container.registry.container.acme.com/k8s.com/k8s/openebs/node-disk-exporter:1.8.0

docker push registry.container.registry.container.acme.com/k8s.com/k8s/calico/cni:v3.21.2
docker push registry.container.registry.container.acme.com/k8s.com/k8s/calico/kube-controllers:v3.21.2
docker push registry.container.registry.container.acme.com/k8s.com/k8s/calico/node:v3.21.2
docker push registry.container.registry.container.acme.com/k8s.com/k8s/coredns/coredns:v1.7.0
docker push registry.container.registry.container.acme.com/k8s.com/k8s/k0sproject/apiserver-network-proxy-agent:0.0.27-k0s1
docker push registry.container.registry.container.acme.com/k8s.com/k8s/kube-proxy:v1.23.3
docker push registry.container.registry.container.acme.com/k8s.com/k8s/cloudnativelabs/kube-router:v1.3.2
docker push registry.container.registry.container.acme.com/k8s.com/k8s/k0sproject/cni-node:0.1.0
docker push registry.container.registry.container.acme.com/k8s.com/k8s/metrics-server/metrics-server:v0.5.2
docker push registry.container.registry.container.acme.com/k8s.com/k8s/openebs/node-disk-manager:1.8.0
docker push registry.container.registry.container.acme.com/k8s.com/k8s/openebs/provisioner-localpv:3.1.0
docker push registry.container.registry.container.acme.com/k8s.com/k8s/openebs/node-disk-operator:1.8.0
docker push registry.container.registry.container.acme.com/k8s.com/k8s/openebs/linux-utils:3.1.0
docker push registry.container.registry.container.acme.com/k8s.com/k8s/openebs/node-disk-exporter:1.8.0

