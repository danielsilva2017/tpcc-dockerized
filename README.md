#tpcc-dockerized

You need  a kubernetes environment to run this dockerized tpcc;

All u need to do is :

~/tpccdocker-kubernetes$ kubectl create -f postgres-nov.yaml 

Wait a couple of seconds for that pod be fully running ( you can check by typing kubectl get pods)

After you need to insert some data in the database you just create :

~/javadocker-kubernetes$ kubectl create -f java-test.yaml 

After the database population and transactions ( you check by seeing the logs of that pod : kubectl logs $name of the pod - should appear that transactions are over), 
we need to replicate the data to the new pod:

~/postgresbackupdocker-kubernetes$ kubectl create -f postgres-clean.yaml 

