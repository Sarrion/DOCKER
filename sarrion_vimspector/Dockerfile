FROM \
  ubuntu:20.04

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get update

RUN apt-get install -y openjdk-11-jdk

RUN apt-get install -y tmux vim git curl wget

RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
COPY .vimrc /root/.vimrc
RUN vim +PluginInstall +qall

CMD ["bash"]
