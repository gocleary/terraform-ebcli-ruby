FROM hashicorp/terraform:1.2.1

RUN apk --no-cache --update add \
        bash \
        less \
        groff \
        build-base \
        jq \
        git \
        curl \
        curl-dev \
        libffi-dev \
        openssl-dev \
        libgcc \
        python3 \
        python3-dev \
        py3-pip \
        ruby \
        zip \
        unzip

RUN pip3 install --upgrade pip

RUN pip install wheel botocore --ignore-installed six

RUN pip install awsebcli awscli --ignore-installed six

# Expose credentials volume
RUN mkdir ~/.aws
