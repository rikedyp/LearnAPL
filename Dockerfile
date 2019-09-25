FROM rikedyp/dyalog-jupyter-binder:50
COPY ./Catalogues ${HOME}/Catalogues
COPY ./Tutorials ${HOME}/Tutorials
COPY ./Projects ${HOME}/Projects
COPY ./ProblemSets ${HOME}/ProblemSets
ADD ./README.ipynb ${HOME}
USER root
RUN chmod -R 777 ${HOME}/*
