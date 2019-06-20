source 00-common.sh

env

echo $ISTIO_VERSION
exit 1
set -x
kubectl apply -f istio-$ISTIO_VERSION/samples/bookinfo/platform/kube/bookinfo-a.yaml
kubectl apply -f istio-$ISTIO_VERSION/samples/bookinfo/networking/bookinfo-gateway.yaml
kubectl get pods --watch
