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
