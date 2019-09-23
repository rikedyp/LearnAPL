FROM rikedyp/dyalog-jupyter-binder:49
COPY ./Tutorials ${HOME}
COPY ./Projects ${HOME}
COPY ./ProblemSets ${HOME}
ADD ./README.md ${HOME}