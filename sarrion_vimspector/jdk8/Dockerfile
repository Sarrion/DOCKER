FROM \
  ubuntu:20.04

RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get install openjdk-8-jdk -y

RUN apt-get install -y tmux vim git curl wget tree

RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
COPY .vimrc /root/.vimrc
COPY .vimspector.json /root/.vimspector.json

# source --> https://github.com/neoclide/coc.nvim#quick-start
RUN curl -sfLS https://install-node.vercel.app | bash -s -- -y

# need to install yarn to install and build coc.nvim
RUN apt-get install -y npm
RUN npm install --global yarn

RUN vim +PluginInstall +qall

# source --> https://github.com/neoclide/coc.nvim/issues/3258
RUN cd ~/.vim/bundle/coc.nvim && yarn install && yarn build

# source --> https://www.npmjs.com/package/coc-java-debug/v/0.1.5?activeTab=readme
# source --> https://www.npmjs.com/package/coc-java-debug/v/0.1.5?activeTab=readme 
# RUN mkdir -p /root/.config/coc
# RUN vim +'CocInstall coc-java-vimspector' +'sleep 25' +qall

# to solve the 'The "java" server crashed 5 times in the last 3 minutes'
# source --> https://github.com/neoclide/coc-java/issues/99
# RUN wget https://download.eclipse.org/jdtls/milestones/0.57.0/jdt-language-server-0.57.0-202006172108.tar.gz
# COPY ./jdt-language-server-0.57.0-202006172108.tar.gz ~/.config/coc/extensions/coc-java-data/server
# RUN tar -xvf jdt-language-server-0.57.0-202006172108.tar.gz
# RUN rm jdt-language-server-0.57.0-202006172108.tar.gz

CMD ["bash"]
