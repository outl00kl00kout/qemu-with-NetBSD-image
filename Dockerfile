FROM python:3.7-slim
RUN pip install --no-cache notebook
ENV HOME=/tmp

# System seems to ignore apt.txt
# Let's do this manually for now.
RUN apt-get update
RUN apt-get install --yes --no-install-recommends qemu-kvm
