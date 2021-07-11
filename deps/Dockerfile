FROM debian:buster-slim
ENV DEBIAN_FRONTEND=noninteractive
ADD install_dependencies.sh /
RUN chmod +x /install_dependencies.sh
RUN /install_dependencies.sh && rm -rf /install_dependencies.sh /var/lib/apt/lists/*
