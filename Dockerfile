FROM rikedyp/dyalog-jupyter-binder:49
COPY ./Tutorials ${HOME}/Tutorials
COPY ./Projects ${HOME}/Projects
COPY ./ProblemSets ${HOME}/ProblemSets
ADD ./README.ipynb ${HOME}
USER root
RUN chmod -R 777 ${HOME}/*
