# deploy-eks.sh (exemplo de novo script)
echo "STARTING DEPLOYMENT TO EKS"
echo "________________________________________"
echo "--> Ensuring kubectl context is set to EKS (run 'aws eks update-kubeconfig ...' if not)"
# Você pode adicionar um comando para verificar o contexto atual ou instruir o usuário
# Exemplo: kubectl config current-context
echo "________________________________________"
echo "--> 1/3: config and secrets"
echo "________________________________________"

kubectl apply -f kubernetes/configmap.yml -n fiap-tc && kubectl apply -f kubernetes/secrets.yml -n fiap-tc

echo "________________________________________"
echo "--> 2/3: db migrations"
echo "________________________________________"

kubectl apply -f kubernetes/jobs/db-migrations.yml -n fiap-tc

echo "________________________________________"
echo "--> 3/3: app"
echo "________________________________________"

kubectl apply -f kubernetes/app/deployment.yml -n fiap-tc && kubectl apply -f kubernetes/app/service.yml -n fiap-tc && kubectl apply -f kubernetes/app/hpa.yml -n fiap-tc

echo "________________________________________"
echo "END OF DEPLOYMENT TO EKS"




# pra atualizar as secrets

kubectl apply -f k8s/secrets.yml -n fiap-tc
kubectl rollout restart deployment fiap-tc -n fiap-tc


# pegar os logs do pod
kubectl get pods -A
kubectl logs fiap-tc-65bf48c747-jzzl7 -n fiap-tc


# meus coiso
aws sts get-caller-identity
