FROM colinhan/android-build-environment:version-1.0.1

# install node.js
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -

# install yarn and other required modules
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get --quiet update --yes && \
    apt-get --quiet install --yes yarn build-essential && \
    rm -rf /var/lib/apt/lists/*
