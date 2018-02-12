# Test Extend Brigade

Testing a way to extend brigade's JS library. THIS IS HIGHLY EXPERIMENTAL AND
PROBABLY WON'T WORK FOR YOU.


## Running


Clone this repo. Edit the makefile to point to your registry. Then:

```
$ make docker-build docker-push
$ helm install -n mytest charts/testpod --set repository=YOURIMAGE
```

(In `minikube` you can skip the `docker-push` and just do `env $(minikube docker-env)` instead)

You can edit the brigade.js file or extend.ts file as you see fit and simply
re-run the above commands. (Don't forget to delete the chart with `helm delete --purge mytest`)

For debugging, you may wish to edit the `alpine-pod` template in the chart and
uncomment the `command:` line. Then you can `kubectl exec -it mytest-testpod /bin/sh`
and test things out from within the pod.


