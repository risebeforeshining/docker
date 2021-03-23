apiVersion: v1
kind: Pod
metadata: 
        name: debian32-test
spec:
  containers:
  - image:  wearefree/debian32-test:v1
    name: debian32
    command: ["/bin/sh","-c","--"]
    args: ["while true;do sleep 10;done"]
    ports:
    - containerPort: 8080
      protocol: TCP

  nodeSelector:
    kubernetes.io/hostname: raspberrypi
    
