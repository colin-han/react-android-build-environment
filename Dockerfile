FROM colinhan/android-build-environment:version-1.0.1

# install node.js
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -

# install other required modules
RUN apt-get --quiet update --yes && \
    apt-get --quiet install --yes build-essential && \
    rm -rf /var/lib/apt/lists/*
