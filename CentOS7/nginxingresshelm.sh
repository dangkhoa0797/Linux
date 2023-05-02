sudo yum -y install wget curl git

controller_tag=$(curl -s https://api.github.com/repos/kubernetes/ingress-nginx/releases/latest | grep tag_name | cut -d '"' -f 4)
wget https://raw.githubusercontent.com/kubernetes/ingress-nginx/${controller_tag}/deploy/static/provider/baremetal/deploy.yaml

mv deploy.yaml nginx-ingress-controller-deploy.yaml

vim nginx-ingress-controller-deploy.yaml

kubectl apply -f nginx-ingress-controller-deploy.yaml

kubectl config set-context --current --namespace=ingress-nginx