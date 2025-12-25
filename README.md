# OS Study (Linux / Unix Fundamentals)

## Goal
- **Server Developer 로서 필요한 운영체제 기초 체력을 만든다**
    - OS의 핵심 개념을 이론 + 실습으로 이해한다
    - Linux(Ubuntu)에서 실제 서버 환경(systemd, 서비 관리 등) 을 경험한다
    - 내 어플리케이션을 직접 VM(Ubuntu)에 배포 및 운영해보며, 더 깊은 이해가 바탕된 실무 능력을 갖춘
- **서버에 직접 올려보고, 깨뜨려도보고, 로그 보고 고쳐도보면서, 비전공자로서 부족한 부분을 채워나가 보자**

## Contents
```text
os-study/
├── README.md
├── basics/            # OS, 프로세스, 파일 시스템 개념 정리
├── commands/          # 자주 쓰는 명령어 정리
├── shell-scripting/   # 쉘 스크립트 실습
└── system/            # systemd, 서비스, 로그
```
- [basics](/basics)
- [commands](/commands)
- [shell-scripting](/shell-scripting)
- [system](/system)

## Roadmap
### Phase 1 — UNIX / OS 기본 개념
- OS의 계층 구조 이해
    - 커널 vs 유저스페이스
    - 시스템 콜 개념 (user → kernel)
- 프로세스와 실행
    - 프로세스 / 스레드
    - 프로세스 생성 (fork / exec 개념)
- 파일 시스템
    - 파일 디스크립터 (0,1,2)
    - 커널이 관리하는 리소스
- 권한과 보안
    - user / group / permission
- 표준 입출력
    - stdin / stdout / stderr
- 쉘의 정체
    - 쉘은 유저스페이스 프로그램
    - bash / zsh 차이
- 기본 명령어 실습
    - ps, top, ls, chmod, kill

### Phase 2 — Shell & Automation
- 쉘 스크립트 구조
    - 유저스페이스에서 커널 리소스를 사용하는 방법
- 프로세스 제어
    - &, wait, nohup (커널 스케줄링과 연결)
- 입출력 제어
    - 리다이렉션 (커널 FD 조작)
    - 파이프 (프로세스 간 통신)
- 로그 처리
    - 파일 기반 로그
    - 표준 출력 기반 로그
- 간단한 배치 스크립트 작성

### Phase 3 — Linux 환경 실습 (UTM / VMware)
- Ubuntu VM 설치 및 기본 환경 구성
    - 네트워크 설정 (NAT / Port Forwarding)
    - SSH 접속 및 키 기반 인증
    - 사용자 / 권한 분리 (root vs 일반 사용자)
- Linux 디렉토리 구조 이해
    - /etc : 설정 파일
    - /var : 로그 / 런타임 데이터
    - /proc : 커널이 노출하는 정보
    - /usr : 실행 파일 / 라이브러리
- 패키지 관리
    - apt 동작 원리
    - 패키지 설치 / 제거 / 버전 관리
    - 의존성 개념
- 프로세스 / 리소스 관찰
    - ps, top, htop
    - CPU / 메모리 사용량 확인
    - 열린 파일 / 포트 확인 (lsof, ss)
- 서비스 관리
    - systemd 구조 이해
    - systemctl start / stop / enable
    - 서비스 실패 시 상태 분석
- 로그 관리
    - journalctl 사용법
    - /var/log 구조
    - 로그 레벨 개념
- 부팅 과정 이해
    - 부팅 시 서비스가 언제 시작되는지
    - systemd target 개념

### Phase 4 — 실전 감각 익히기
- 애플리케이션 배포 실습
    - 내 어플리케이션 빌드 (Spring Boot 기반 웹어플리케이)
    - VM으로 배포 (scp / rsync)
    - 포트 개방 및 접근 확인
- 서비스 운영화
    - systemd 서비스 등록
    - 재부팅 후 자동 실행 확인
    - 실행 유저 / 권한 분리
    - 로그 위치 표준화
- CI/CD 기초 실습
    - Jenkins 로컬 설치
    - 빌드 → 배포 파이프라인 구성
    - 실패 시 중단 / 롤백 개념 이해
    - (선택) Argo CD 개념 이해 및 비교
- 장애 상황 재현 & 대응
    - 프로세스 강제 종료
    - 포트 충돌 상황
    - 디스크 부족
    - 권한 오류
    - 잘못된 설정 배포
    - 로그 기반 원인 분석
- 운영 관점 점검
    - 서비스 상태 확인 방법
    - 재기동 전략
    - 로그만 보고 상태 판단하기
- Docker와 비교
    - VM 배포 vs Docker 배포
    - systemd vs container entrypoint
    - 언제 VM이 낫고, 언제 Docker가 나은지 정리

