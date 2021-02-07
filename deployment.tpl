apiVersion: v1
kind: Pod
metadata:
  name: flk
  labels:
    app: flk
spec:
  containers:
  - name: flk
    image: harbor.turingvideo.cn/test/${REPO_NAME}:${REPO_REF}
    command: ['sh', '-c', '/app/dev.sh']
    ports:
    - containerPort: 8000
