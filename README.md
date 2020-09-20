# tpcc-dockerized

Single solution to "dockerized" a well known postgres benchmark.You only need  a kubernetes environment to run this dockerized tpcc;
After downloading this repository, all you need to do is :

~/tpccdocker-kubernetes$ kubectl create -f postgres-nov.yaml 

Wait a couple of seconds for that pod be fully running ( you can check by typing kubectl get pods)

After you need to insert some data in the database you just create :

~/javadocker-kubernetes$ kubectl create -f java-test.yaml 

After the database population and transactions (that you check by seeing the logs of that pod : kubectl logs $name of the pod - should appear that transactions are over), 
we need to replicate the data to the new pod:

~/postgresbackupdocker-kubernetes$ kubectl create -f postgres-clean.yaml 


