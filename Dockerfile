FROM quay.io/fedora/fedora 

ENV PYTHONUNBUFFERED=1
RUN useradd -m texdora
RUN dnf install -y texlive python3 && fmtutil -sys --all

WORKDIR /home/texdora
USER texdora

RUN python3 -m ensurepip
RUN python3 -m pip install pip --upgrade
RUN python3 -m pip install Pygments>=2.11.2
