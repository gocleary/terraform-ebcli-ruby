FROM hashicorp/terraform:light

RUN apk --no-cache --update add \
        bash \
        less \
        groff \
        jq \
        git \
        curl \
        python \
        py-pip \
        ruby

RUN pip install --upgrade pip \
        awsebcli \
        awscli

# Expose credentials volume
RUN mkdir ~/.aws
