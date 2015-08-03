FROM simexp/niak_dependency
MAINTAINER Pierre-Olivier Quirion <poq@criugm.qc.ca>


ENV VERSION v0.13.1
ENV REPO_NAME pniak
# Install the wight version of NIAK
RUN cd /home/ \
	&&  wget https://github.com/poquirion/docker_build/archive/${VERSION}.zip\ 
	&& unzip ${VERSION}.zip \
	&& rm ${VERSION}.zip \
	&& mv ${REPONAME}-${VERSION} niak



# Command to run octave as GUI
# docker run -i -t --privileged --rm -v /etc/group:/etc/group -v /etc/passwd:/etc/passwd   -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -v $HOME:$HOME --user $UID poquirion/docker_build /bin/bash -c "cd $HOME/travail/simexp/software; source /opt/minc-itk4/minc-toolkit-config.sh; octave --force-gui --persist --eval 'addpath(genpath(pwd))'; /bin/bash"
