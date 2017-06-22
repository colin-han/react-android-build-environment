# version
Android SDK: 23, 24, 25
Andriod build tools: 23.0.1, 25.0.2
Node.js: 7.10.0
react-native-cli: 2.0.1

# React-native android build environment
You can use this docker image to build react-native app for android platform in docker container. For example, you can use this image for GitLab pipeline.

```yaml
#.gitlab-ci.yml
image: colinhan/react-android-build-environment

build-android:
  stage: build
  script:
    - yarn install
    - cd android
    - ./gradlew assemble
  artifacts:
    paths:
      - android/app/build/outputs/
```

You still can use this image through console to build app like following:

```bash
docker run -v your/code/path:/code
           colinhan/react-android-build-environment
           /code/android/gradlew assemble
```
