FROM ctumrs/mrs_uav_system:latest

WORKDIR /home
ENV HOME=/home

RUN mkdir -p /opt/mrs/git && cd /opt/mrs/git && git clone https://github.com/ctu-mrs/uav_modules

RUN cd /opt/mrs/git/uav_modules && ./installation/install.sh && gitman install && ./installation/install.sh --unattended

CMD ["bash"]
