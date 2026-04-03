FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install gnumake and texlive-full
RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    build-essential \
    latexmk \
    texlive-xetex \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended \
    # texlive-fonts-extra \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
