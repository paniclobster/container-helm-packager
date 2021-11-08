# Base image
FROM paniclobster/devcontainer-base:0.7.0

# Setup VSCode Server Directory
RUN devcontainer-setup vscode-server-directory

# Setup Python
RUN devcontainer-setup python3

# Setup Docker
RUN devcontainer-setup docker

# Setup Kubernetes
RUN devcontainer-setup kubernetes

# Setup Helm
RUN devcontainer-setup helm

# Setup Kustomize
RUN devcontainer-setup kustomize

# Setup Skaffold
RUN devcontainer-setup skaffold
