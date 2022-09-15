FROM \
  ubuntu:22.04

RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get install -y tmux vim git curl wget tree build-essential gdb python3-dev

RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
COPY .vimrc /root/.vimrc
COPY .vimspector.json /root/.vimspector.json
COPY fib.c /root/fib.c
RUN vim +PluginInstall +qall
RUN vim +'VimspectorInstall vscode-cpptools' +'sleep 50' +qall


# adding some style to vim
COPY .bashrc /root/.bashrc
RUN mkdir /root/.vim/colors
# RUN git clone https://github.com/glepnir/oceanic-material && \
#     cp oceanic-material/colors/oceanic_material.vim /root/.vim/colors/
COPY oceanic-material/colors/oceanic_material.vim /root/.vim/colors/

CMD ["bash"]
