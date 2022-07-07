# k8s_debug

## go download
- <https://dl.google.com/go/go1.9.1.linux-amd64.tar.gz>
- <https://dl.google.com/go/go1.11.1.linux-amd64.tar.gz>
- <https://dl.google.com/go/go1.18.1.linux-amd64.tar.gz>

## k8s download
- <https://github.com/kubernetes/kubernetes/archive/refs/tags/v1.9.3.tar.gz>
- <https://github.com/kubernetes/kubernetes/archive/refs/tags/v1.11.1.tar.gz>
- <https://github.com/kubernetes/kubernetes/archive/refs/tags/v1.13.5.tar.gz>
- <https://github.com/kubernetes/kubernetes/archive/refs/tags/v1.13.8.tar.gz>
- <https://github.com/kubernetes/kubernetes/archive/refs/tags/v1.13.10.tar.gz>
- <https://github.com/kubernetes/kubernetes/archive/refs/tags/v1.17.1.tar.gz>

## tools
- kubectl-whoami: <https://github.com/rajatjindal/kubectl-whoami/releases/download/v0.0.44/kubectl-whoami_v0.0.44_linux_amd64.tar.gz>

## docker hub
> root password: `K8s@env`<br>
> ssh: `ssh -p12222 root@127.0.0.1`<br>
> exploit: `cd exploit;./run`<br>

- base: `docker pull noirfate/k8svul-base:1.0`
- CVE-2017-1002101 hostPath symbol link path escape: `docker pull noirfate/vul-k8s-cve-2017-1002101:1.0`
- CVE-2018-1002100 kubectl cp path escape: `docker pull noirfate/vul-k8s-cve-2018-1002100:1.0`
- CVE-2018-1002105 kube-apiserver do not properly close kubelet proxy connection: `docker pull noirfate/vul-k8s-cve-2018-1002105:1.0`
- CVE-2019-1002101 kubectl cp path escape: `docker pull noirfate/vul-k8s-cve-2019-1002101:1.0`
- CVE-2019-11246 kubectl cp path escape: `docker pull noirfate/vul-k8s-cve-2019-11246:1.0`
- CVE-2019-11249 kubectl cp path escape: `docker pull noirfate/vul-k8s-cve-2019-11249:1.0`
- CVE-2019-11250 kube-apiserver token revealed in log: `docker pull noirfate/vul-k8s-cve-2019-11250:1.0`
- CVE-2019-11251 kubectl cp path escape: `docker pull noirfate/vul-k8s-cve-2019-11251:1.0`
- CVE-2019-11253 kube-apiserver yaml parser dos: `docker pull noirfate/vul-k8s-cve-2019-11253:1.0`
- CVE-2020-8555 kube-controller-manager ssrf: `docker pull noirfate/vul-k8s-cve-2020-8555:1.0`
- CVE-2020-8559 kube-apiserver follow kubelet redirect request: `docker pull noirfate/vul-k8s-cve-2020-8559:1.0`
- CVE-2021-25741 kubelet subpath TOCTOU: `docker pull noirfate/vul-k8s-cve-2021-25741:1.0`
- CVE-2021-25742 ingress-ngnix snippet command execution: `docker pull noirfate/vul-k8s-cve-2021-25742:1.0`

## run
```
docker run --name master --privileged -v /lib/modules:/lib/modules -v /etc/localtime:/etc/localtime -e LC_CTYPE=en_US.UTF-8 -idt xxx
```