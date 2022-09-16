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


#  adding some style to vim
COPY .bashrc /root/.bashrc
#  a line has been added to the standard .bashrc: TERM=xterm-256color
# so style colors are correctly interpreted
RUN mkdir /root/.vim/colors
# RUN git clone https://github.com/glepnir/oceanic-material && \
#     cp oceanic-material/colors/oceanic_material.vim /root/.vim/colors/
COPY oceanic-material/colors/oceanic_material.vim /root/.vim/colors/


#  in order to include glibc sources into debugging...
#RUN apt-get install -y glibc-source
#  this way you untar the file, move it to /usr/src/glibc
# and link it using the vimspector -exec to comunicate with gdb
# i.e. something like: -exec directory /usr/src/glibc/glibc-2.35


CMD ["bash"]
