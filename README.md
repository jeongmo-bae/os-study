# OS Study (Linux / Unix Fundamentals)

## Goal
- **Backend / Data Engineer 로서 필요한 운영체제 기초 체력을 만든다**
    - OS의 핵심 개념을 이론 + 실습으로 이해한다
    - Linux(Ubuntu)에서 실제 서버 환경(systemd, 서비 관리 등) 을 경험한다
    - 내 어플리케이션을 직접 VM(Ubuntu)에 배포 및 운영해보며, 더 깊은 이해가 바탕된 실무 능력을 갖춘다

## Plan
- macOS 환경을 기반으로 시작(기초 개념 공부 및 실습)
- Ubuntu(VM) 환경에서 실제 Linux 시스템을 다뤄 볼 예정
- **실제 내 어플리케이션을 VM에 배포, 운영, 트러블슈팅 까지 해볼예정**

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
- 커널, 유저스페이스, 프로세스, 파일 시스템, 쉘 개념 중심
    - 프로세스 / 스레드
    - 파일 디스크립터
    - 권한 (user / group / permission)
    - 표준 입출력 (stdin / stdout / stderr)
    - 쉘 동작 원리 (bash, zsh)
    - 기본 명령어 실습 (ps, top, ls, chmod, kill 등)

### Phase 2 — Shell & Automation
- 쉘 스크립트 구조
    - 변수 / 조건문 / 반복문
    - 프로세스 제어 (&, wait, nohup)
    - 로그 처리 / 리다이렉션
    - 간단한 배치 스크립트 작성

### Phase 3 — Linux 환경 실습 (UTM / VMware)
- Ubuntu VM 설치 & 실습
    - Linux 디렉토리 구조 이해 (/etc, /var, /proc, /usr)
    - 패키지 관리 (apt)
    - 서비스 관리 (systemd, systemctl)
    - 로그 관리 (journalctl)
    - 부팅 과정 이해

### Phase 4 — 실전 감각 익히기
- 서비스 배포 및 운영 실습
    - 서비스 등록 & 자동 실행
    - 로그 분석
    - 장애 상황 재현 (프로세스 다운, 포트 충돌 등)
    - Docker와 비교하며 차이 이해