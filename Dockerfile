FROM webcuisine/gitlab-ci-react-native-android

# Install required modules
RUN apt-get --quiet update --yes && \
    apt-get --quiet install --yes locales && \
    rm -rf /var/lib/apt/lists/* && \
    localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.UTF-8
