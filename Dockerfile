FROM androidsdk/android-30

FROM fischerscode/flutter

USER root:root

ENV APP_PATH=/home/app

WORKDIR ${APP_PATH}

COPY . .

RUN dart pub global activate junitreport

ENTRYPOINT bash entrypoint.sh

