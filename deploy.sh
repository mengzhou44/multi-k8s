docker build -t mengzhou44/multi-client:latest -t mengzhou44/multi-client:$SHA -f ./client/Dockerfile  ./client
docker build -t mengzhou44/multi-server:latest -t mengzhou44/multi-server:$SHA -f ./server/Dockerfile  ./server
docker build -t mengzhou44/multi-worker:latest -t mengzhou44/multi-worker:$SHA -f ./worker/Dockerfile  ./worker 
docker push mengzhou44/multi-client:latest
docker push mengzhou44/multi-server:latest
docker push mengzhou44/multi-worker:latest
docker push mengzhou44/multi-client:$SHA
docker push mengzhou44/multi-server:$SHA
docker push mengzhou44/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/client-deployment client=mengzhou44/multi-client:$SHA
kubectl set image deployments/server-deployment server=mengzhou44/multi-server:$SHA
kubectl set image deployments/worker-deployment worker=mengzhou44/multi-worker:$SHA