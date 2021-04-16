
# 基于centos6基础镜像
FROM gcr.io/knative-releases/knative.dev/serving/cmd/webhook@sha256:268bd1383b56ba7b9acf391c681f7a63780c22dcd4555c2f4a7b61ec6da81cf4
MAINTAINER ygmkk "13983658389@139.com"

# 设置当前工具目录
# 该命令不会新增镜像层
WORKDIR /home
