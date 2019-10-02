FROM rikedyp/dyalog-jupyter-binder:51
COPY ./Catalogues ${HOME}/Catalogues
COPY ./Tutorials ${HOME}/Tutorials
COPY ./Projects ${HOME}/Projects
COPY ./ProblemSets ${HOME}/ProblemSets
COPY ./assets ${HOME}/assets
COPY ./img ${HOME}/img
COPY ./data ${HOME}/data
ADD ./START.ipynb ${HOME}
USER root
RUN chmod -R 777 ${HOME}/*
