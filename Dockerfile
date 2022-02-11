FROM ubuntu
RUN apt update && apt -y upgrade && \
apt install ffmpeg libsm6 libxext6 -y && \
apt install -y wget && \
apt install -y xterm vim tmux && \
useradd --create-home --shell /bin/bash nm-user
USER nm-user
WORKDIR nm-user
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O $HOME/miniconda.sh && \
bash $HOME/miniconda.sh -b -p $HOME/miniconda && \
export PATH=$PATH:$HOME/miniconda/bin/ && \
conda init bash && \
conda install -c conda-forge -y mamba && \
mamba create -n nm -c conda-forge -c warthan07 -y nemaktis=1.4.4 && \
echo "export PATH=$PATH:$HOME/miniconda/bin/" >> $HOME/.bashrc && \
echo "conda activate nm" >> $HOME/.bashrc

ENV HOME /home/nm-user
CMD /bin/bash
