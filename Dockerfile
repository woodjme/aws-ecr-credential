FROM amazon/aws-cli:2.0.31
ARG kubectlVersion=v1.18.5

# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/${kubectlVersion}/bin/linux/amd64/kubectl \
	&& mv kubectl /usr/local/bin \
	&& chmod +x /usr/local/bin/kubectl
