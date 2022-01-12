FROM ctumrs/mrs_uav_system:latest

WORKDIR /home
ENV HOME=/home

RUN mkdir -p /opt/mrs/git && cd /opt/mrs/git && git clone https://github.com/ctu-mrs/uav_modules

RUN ln -s /opt/mrs/git/uav_modules /opt/mrs/mrs_workspace/src

RUN cd /opt/mrs/mrs_workspace/src/uav_modules && gitman install && ./installation/install.sh --unattended

RUN cd /opt/mrs/mrs_workspace && catkin build

CMD ["bash"]
