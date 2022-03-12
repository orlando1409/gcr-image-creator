kubectl get pods -o=custom-columns='NODE:.spec.nodeName,NAME:.metadata.name'
