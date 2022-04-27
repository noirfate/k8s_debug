FROM ubuntu:bionic
WORKDIR /root
ARG GOVER=1.18.1
COPY sources.list /etc/apt/
ADD metarget.tar.gz /root/
RUN apt update && apt install -y vim python3 python3-pip unzip kmod docker.io software-properties-common systemd net-tools gdb rsync autotools-dev automake libncurses5-dev texinfo flex libreadline-dev locales
RUN locale-gen en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-8
COPY daemon.json /etc/docker/
RUN python3 -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple --upgrade pip && pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && pip3 install -r ./metarget/requirements.txt
COPY go$GOVER.linux-amd64.tar.gz /root
RUN tar -C /usr/local/ -xzf go$GOVER.linux-amd64.tar.gz && ln -s /usr/local/go/bin/go /usr/bin/go && ln -s /usr/local/go/bin/gofmt /usr/bin/gofmt && rm -f go$GOVER.linux-amd64.tar.gz && echo 'GOPROXY="https://mirrors.aliyun.com/goproxy/,direct"' > /etc/environment  && echo "add-auto-load-safe-path /usr/local/go/src/runtime/runtime-gdb.py" >> ~/.gdbinit
COPY cgdb-master.zip /root/
RUN unzip cgdb-master.zip && cd ./cgdb-master && ./autogen.sh && ./configure && make install && cd .. && rm -rf cgdb-master cgdb-master.zip
ENTRYPOINT ["/sbin/init"]
