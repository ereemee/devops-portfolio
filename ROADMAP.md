# DevOps Portfolio Roadmap

QA 엔지니어 → DevOps 전환을 위한 8단계 학습·실습 로드맵입니다.
한 단계에 대략 1~2주를 쓰고, 단계마다 저장소에 결과물을 남깁니다.

- 범례: `[x]` 완료 · `[ ]` 예정
- 주간 기록: [docs/weekly/](./docs/weekly/)

---

## 0. 준비
- [x] 저장소 생성 (README, .gitignore(Python), MIT 라이선스)
- [ ] 폴더 구조 · `.gitattributes`(.sh 파일 LF 고정)
- [ ] README · ROADMAP 초안 작성

## 1. Linux·운영체제 기초 (`linux/`)
- [ ] WSL2(Ubuntu) 환경 구성
- [ ] 서버 점검 스크립트 (디스크·메모리·프로세스) — `linux/server_check.sh`
- [ ] 파일·권한·사용자·그룹 정리 (chmod, chown)
- [ ] 프로세스·서비스 관리 정리 (ps, top, systemd)
- [ ] 패키지 관리(apt)·로그 보기(journalctl) 정리
- [ ] 정리 노트 — `linux/NOTES.md`

## 2. 네트워크 기초 (`network/`)
- [ ] IP·서브넷·DNS·HTTP/HTTPS·포트·방화벽 개념 정리
- [ ] curl·ping·traceroute·ss·dig 실습 기록
- [ ] Nginx 리버스 프록시 구성
- [ ] 헬스체크 스크립트

## 3. Python 자동화 (`app/`, `scripts/`)
- [ ] 로그 분석 스크립트
- [ ] REST API 헬스체크 스크립트
- [ ] Flask/FastAPI 샘플 앱 (이후 단계 배포 대상)
- [ ] pytest 테스트

## 4. Git·CI/CD (`.github/workflows/`, `docs/ci-cd.md`)
- [ ] GitHub Actions: ruff(lint) · pytest · 빌드
- [ ] 브랜치 전략 정리
- [ ] PR 템플릿
- [ ] Jenkins vs GitHub Actions 비교 문서

## 5. Docker (`Dockerfile`, `compose.yaml`)
- [ ] 샘플 앱 멀티 스테이지 Dockerfile
- [ ] docker compose (앱 + DB + Nginx)
- [ ] 이미지 최적화 (크기 비교 기록)
- [ ] GitHub Actions에서 이미지 빌드 → GHCR 푸시

## 6. Kubernetes (`k8s/`, `helm/`)
- [ ] kind 또는 minikube 클러스터
- [ ] Deployment · Service · ConfigMap · Secret · Ingress
- [ ] 롤링 업데이트 · 롤백 실습
- [ ] Helm 차트 기초

## 7. Azure (`azure/`)
- [ ] Azure CLI · 리소스 그룹
- [ ] ACR(컨테이너 레지스트리)
- [ ] AKS 또는 Azure Container Apps 배포
- [ ] GitHub Actions → Azure 배포 파이프라인
- [ ] 비용 관리 (최소 SKU, 실습 후 `az group delete`)

## 8. IaC·모니터링 (`terraform/`, `monitoring/`)
- [ ] Terraform으로 Azure 리소스 코드화
- [ ] Prometheus · Grafana 또는 Azure Monitor
- [ ] 최종 아키텍처 다이어그램
- [ ] README 최종 정리

## 🔗 연결 과제 (선택)
- [ ] mobile-qa-automation 테스트를 CI/CD·Docker 환경에서 실행
