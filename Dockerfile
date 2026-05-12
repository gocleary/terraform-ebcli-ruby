FROM hashicorp/terraform:1.15.2

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
        unzip \
        aws-cli

# awsebcli is pip-only and AWS hasn't released a v2. PEP 668 forbids system-wide
# pip installs on the new Alpine base, so install it into an isolated virtualenv.
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:${PATH}"
RUN pip install --upgrade pip && pip install awsebcli

# Expose credentials volume
RUN mkdir ~/.aws
