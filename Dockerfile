FROM gcr.io/cloud-builders/gcloud
COPY kubectl.bash /builder/kubectl.bash
CMD curl -L -o /builder/kubectl \
  https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
CMD chmod +x /builder/kubectl
ENTRYPOINT ["/builder/kubectl.bash"]
