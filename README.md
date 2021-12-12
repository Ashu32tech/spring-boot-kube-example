# spring-boot-kube-example

*-----spanner-poller-converter-publisher pushing in gcp cloud-platform---------*
================================================================================

git clone https://github.com/Ashu32tech/spanner-poller-converter-publisher.git
cd spanner-poller-converter-publisher/
mvn clean compile package
docker build . -t gcr.io/silver-approach-307010/spanner-poller-converter-publisher
docker images
docker push gcr.io/silver-approach-307010/spanner-poller-converter-publisher:latest
gcloud container clusters create "cluster-1" --scopes "https://www.googleapis.com/auth/cloud-platform" --num-nodes "1" --zone "us-central1-a" --project "silver-approach-307010"
gcloud container clusters get-credentials --project silver-approach-307010 cluster-1 --zone us-central1-a
/*kubectl run spanner-poller-converter-publisher --image=gcr.io/silver-approach-307010/spanner-poller-converter-publisher:latest --port 9000 --labels="app=spanner-poller-converter-publisher"*/

kubectl create deployment spanner-crud --image=gcr.io/silver-approach-307010/spanner-crud:latest
kubectl get deployments
kubectl get pods
kubectl create service loadbalancer spanner-crud --tcp=8080:8080

kubectl get pods
kubectl get pods --all-namespaces

gcloud container clusters delete cluster-1 --zone=us-central1-a --project "silver-approach-307010"
