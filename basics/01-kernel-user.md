# Kernel Space & User Space

```text OS-Architecture
[ User (Human) ]
        ↓
[ User Space Programs ]
  - Shell (bash, zsh)
  - Applications (Java, Python, nginx, mysql)
  - Libraries (glibc, libpthread)
        ↓  ← System Call
[ Kernel Space (Operating System Kernel) ]
  - Process Scheduler
  - Memory Manager
  - File System
  - Device Driver
  - Network Stack
        ↓
[ Hardware ]
```

## Kernel(Space)
- 하드웨어를 독점 관리하며, 모든 프로세스의 실행을 관리하는 os 핵심 프로그램
- 가장 높은 권한(Ring 0)
- 하드웨어 자원의 유일한 관리자
- User Space 프로그램의 요청을 중개
- 동시에 단 하나만 존재
  - vm N 개 = Kernel N 개
  - container N 개 = Kernel 1 개 (호스트 커널 공유)
- 커널이 하는 일
  - Process Scheduler : 어떤 프로세스가 CPU를 쓸지 결정
  - Memory Manager : 가상 메모리, 페이지, 스왑 관리
  - File System : 파일 읽기/쓰기, inode, permission
  - Device Driver : 디스크, 네트워크, 키보드
  - Network Stack : TCP/IP 처리
  - Security : user / group / permission

> 커널 = 하드웨어와 소프트웨어 사이의 절대 관리자


## User Space
