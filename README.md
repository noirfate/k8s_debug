# k8s_debug

## go download
- <https://dl.google.com/go/go1.9.1.linux-amd64.tar.gz>
- <https://dl.google.com/go/go1.11.1.linux-amd64.tar.gz>
- <https://dl.google.com/go/go1.18.1.linux-amd64.tar.gz>

## k8s download
- <https://github.com/kubernetes/kubernetes/archive/refs/tags/v1.9.3.tar.gz>
- <https://github.com/kubernetes/kubernetes/archive/refs/tags/v1.11.1.tar.gz>
- <https://github.com/kubernetes/kubernetes/archive/refs/tags/v1.13.5.tar.gz>

## tools
- kubectl-whoami: <https://github.com/rajatjindal/kubectl-whoami/releases/download/v0.0.44/kubectl-whoami_v0.0.44_linux_amd64.tar.gz>

## docker hub
> root password: `K8s@env`<br>
> ssh: `ssh -p12222 root@127.0.0.1`<br>
> exploit: `cd exploit;./run`<br>

- base: `docker pull noirfate/k8svul-base`
- CVE-2017-1002101: `docker pull noirfate/vul-k8s-cve-2017-1002101:1.0`
- CVE-2018-1002100: `docker pull noirfate/vul-k8s-cve-2018-1002100:1.0`
- CVE-2018-1002105: `docker pull noirfate/vul-k8s-cve-2018-1002105:1.0`
- CVE-2019-1002101: `docker pull noirfate/vul-k8s-cve-2019-1002101:1.0`
- CVE-2019-11246: `docker pull noirfate/vul-k8s-cve-2019-11246:1.0`
- CVE-2021-25741: `docker pull noirfate/vul-k8s-cve-2021-25741:1.0`

## run
```
docker run --name master --privileged -v /lib/modules:/lib/modules -v /etc/localtime:/etc/localtime -e LC_CTYPE=en_US.UTF-8 -idt xxx
```