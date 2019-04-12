# 도커 컴포즈 설정을 위한 파이썬/Django/Elastic(ElasticSearch, Kibana) 샘플 프로젝트

### 요약

```
$ git clone https://github.com/jinseopim/django-elastic-for-docker-compose.git
$ cd django-elastic-for-docker-compose
$ docker-compose up
```

### 요구조건

- 도커 엔진 : 1.12.0 이상
- 도커 컴포즈 : 1.6.0 이상

### 실행

1. 저장소 클론

```
$ git clone https://github.com/jinseopim/django-elastic-for-docker-compose.git
```

2. 소스 디렉터리로 이동

```
$ cd django-sample-for-docker-compose
```

3. 컴포즈로 서비스 실행

```
$ docker-compose up
```

### 도커 컴포즈 구성

- docker-compose.yml

도커 컴포즈 명령(`docker-compose`) 실행시 참고하는 설정 모음

- compose/django/Dockerfile-dev

개발용 컨테이너를 만들기 위한 Dockerfile (배포용 Dockerfile과 살짝 다름)


### 도커 주요 명령어
1. 컨테이너 관련 명령어
    1.1. 라이프 사이클
```
        - docker run : 컨테이너를 생성한다.
        - docker stop : 컨테이너를 정지시킨다.
        - docker start : 컨테이너를 다시 실행시킨다.
        - docker restart : 컨테이너를 재가동한다.
        - docker rm : 컨테이너를 삭제한다.
        - docker kill : 컨테이너에게 SIGKILL을 보낸다. 이에 관련된 이슈가 있다..
        - docker attach : 실행중인 컨테이너에 접속한다. * docker wait 컨테이너가 멈출 때까지 블럭한다.
```

    1.2. 관련된 정보를 출력해주는 명령어
```
        - docker ps : 명령어는 실행중인 컨테이너 목록을 보여준다.
        - docker inspect ip : 주소를 포함한 특정 컨테이너에 대한 모든 정보를 보여준다.
        - docker logs : 컨테이너로부터 로그를 가져온다.
        - docker events : 컨테이너로부터 이벤트를 가져온다.
        - docker port : 컨테이너의 특정 포트가 어디로 연결되어있는지 보여준다.
        - docker top : 컨테이너에서 실행중인 프로세스를 보여준다.
        - docker diff : 컨테이너 파일 시스템에서 변경된 파일들을 보여준다.
        - docker ps -a : 실행중인 컨테이너와 멈춰있는 컨테이너를 모두 보여준다.
        - docker network rm(docker network ls -q) : 네트워크 설정을 확인한다.
```

2. 이미지 관련 명령어
```
        - docker images : 모든 이미지 목록을 보여준다.
        - docker import : tarball 파일로부터 이미지를 생성한다.
        - docker build : Dockerfile을 통해 이미지를 생성한다.
        - docker commit : 컨테이너에서 이미지를 생성한다.
        - docker rmi : 이미지를 삭제한다.
        - docker insert : URL에서 이미지로 파일을 집어넣는다. * docker load 표준 입력으로 tar 파일에서 (이미지와 태그를 포함한) 이미지를 불러온다.(0.7부터 사용가능).
        - docker save : 모든 부모 레이어와 태그, 버전 정보를 tar 형식으로 표준출력을 통해 @@@ (0.7부터 사용가능).
```

[출처] [https://gist.github.com/nacyot/8366310](https://gist.github.com/nacyot/8366310)

### 도커 컴포즈 주요 명령어
```
    - 도커 컴포즈 빌드&스타트 : docker-compose up --build (설정파일을 수정한 경우)
    - 도커 컴포즈 스타트 : docker-compose up
    - 모든 볼륨 삭제 : docker stop $(docker ps -a -q); docker rm $(docker ps -a -q); docker volume rm $(docker volume ls -qf dangling=true)
```

