#!/bin/bash

REPOSITORY=/home/ec2-user/app/git

cd $REPOSITORY/finders_sample/

echo "> Git Pull"

git pull

echo "> 프로젝트 Build 시작"

mvn package -DfinalName=finders

echo "> 현재 구동중인 애플리케이션 pid 확인"

CURRENT_PID=$(pgrep -f finders)

echo "$CURRENT_PID"

if [ -z $CURRENT_PID ]; then
    echo "> 현재 구동중인 애플리케이션이 없으므로 종료하지 않습니다."
else
    echo "> kill -2 $CURRENT_PID"
    kill -9 $CURRENT_PID
    sleep 5
fi

echo "> 새 어플리케이션 배포"

echo "> Build 파일 복사"

cp ./target/*.war /opt/tomcat/webapps

echo "> tomcat 재시작"

systemctl restart tomcat
