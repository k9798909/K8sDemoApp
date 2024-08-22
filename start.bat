kubectl apply -f kubernetes-secret.yaml
echo "StatefulSet ok"

kubectl apply -f kubernetes-statefulset.yaml
echo "StatefulSet ok"

kubectl apply -f kubernetes-deployment.yaml
echo "Deployment ok"

kubectl apply -f kubernetes-service.yaml
echo "Service ok"

kubectl apply -f kubernetes-ingress.yaml
echo "Ingress ok"

echo "all resource ok"

pause
