docker build -t someonesgarden/multi-client:latest -t someonesgarden/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t someonesgarden/multi-server:latest -t someonesgarden/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t someonesgarden/multi-worker:latest -t someonesgarden/multi-worker:$SHA -f ./worker/Dockerfile ./worker
docker push someonesgarden/multi-client:latest
docker push someonesgarden/multi-server:latest
docker push someonesgarden/multi-worker:latest
docker push someonesgarden/multi-client:$SHA
docker push someonesgarden/multi-server:$SHA
docker push someonesgarden/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=someonesgarden/multi-server:$SHA
kubectl set image deployments/client-deployment client=someonesgarden/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=someonesgarden/multi-worker:$SHA
