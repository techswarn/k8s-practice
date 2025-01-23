kubectl config set-context --current --namespace=argocd

argocd app create titan2 \
    --repo https://github.com/techswarn/titan.git \
    --path k8s \
    --dest-server https://kubernetes.default.svc \
    --dest-namespace frontend

argocd app delete titan2