FROM alpine

ENV ETCD_VERSION "3.0.8"

EXPOSE 2379
EXPOSE 2380

ADD ./etcd-v${ETCD_VERSION}-linux-amd64/etcd /sbin/etcd
ADD ./etcd-v${ETCD_VERSION}-linux-amd64/etcdctl /usr/bin/etcdctl

CMD ["etcd", "--listen-peer-urls", "http://0.0.0.0:2380", "--listen-client-urls","http://0.0.0.0:2379" ]
