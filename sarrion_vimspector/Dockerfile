FROM \
  ubuntu:20.04

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get update

RUN apt-get install -y openjdk-11-jdk

RUN apt-get install -y tmux vim git curl wget

RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
COPY .vimrc /root/.vimrc
COPY .vimspector.json /root/.vimspector.json
RUN vim +PluginInstall +qall
RUN apt-get install -y build-essential cmake vim-nox python3-dev
RUN apt-get install -y mono-complete golang nodejs default-jdk npm
RUN python3 /root/.vim/bundle/YouCompleteMe/install.py --java-completer
RUN vim +'VimspectorInstall vscode-java-debug' +'sleep 10' +qall

CMD ["bash"]
