# sk-kit — SK하이닉스 AI 해커톤 웹 IDE용 Skill 키트

**용도:** 과제 요구사항 확인 → 최소 구현 → 실행·테스트 → 결과 근거 정리를 돕는 공개 참고 지침 8개입니다. 반도체/설비 데이터와 예측 모델 관련 스킬도 포함합니다. **완성된 시험 답안, AI 모델, 웹앱, MCP 서버는 포함하지 않습니다.**

> **시험 규칙이 최우선:** 이 README는 사용 편의를 위한 참고 자료입니다. 실제 과제의 README·제출 안내·당일 메일이 우선이며, 이전 가이드와 최신 메일이 다르면 최신 메일을 따릅니다. 공개 GitHub 자료의 `git clone` 사용과 평가 문제·데이터·결과물의 외부 전송은 전혀 다릅니다.

## 1. 시험장: 웹 IDE 터미널에서 시작

이 대회는 **응시 플랫폼 내 웹 IDE**를 제공합니다. 별도 Windows PowerShell이나 로컬 VS Code를 열 필요가 없습니다. 웹 IDE 안의 **TERMINAL**에 명령어를 입력하세요. 아래 명령은 Git이 사용 가능하고 해당 공개 저장소에 접근할 수 있다는 전제입니다.

### ① 실제 과제 폴더 위치 확인 → 복제

```bash
pwd
git clone https://github.com/ddang-mok/sk-kit.git
```

- **`--depth 1` 옵션이나 `_sk-kit` 별칭을 붙이지 않습니다.** 복제되면 현재 위치에 `sk-kit/`이 생성됩니다.
- 이미 `sk-kit/`이 있다면 같은 위치에 다시 복제하지 마세요. 현재 폴더/파일을 먼저 확인하세요.
- 과제 코드는 **기존 과제 작업 폴더**에 유지하고, `sk-kit` 안에 과제 답안을 만들지 마세요.
- Git/외부 네트워크가 막히면 제한을 우회하지 말고 **Cofa Helper / 문제 신고**를 이용하세요.

```bash
test -f sk-kit/AGENTS.md && echo 'AGENTS OK'
test -f sk-kit/.agents/skills/sk-kit/SKILL.md && echo 'SKILL OK'
```

두 줄에서 각각 `OK`가 보이면 **참고 파일 존재**만 확인된 것입니다. Codex 스킬 자동 인식이나 과제 통과를 의미하지는 않습니다.

### ② 같은 웹 IDE 터미널에서 제공된 Codex 사용

```bash
codex
```

가이드에 따라 `/status`로 모델·권한을 살피고 필요할 때 `/model`로 허용 모델을 선택하세요. **시험에서 제공된 Codex 및 허용 모델만 사용**하고 버전을 임의 업데이트하지 마세요. API 키나 별도 유료 구독을 연결하지 마세요.

Codex에 붙여 넣을 첫 요청:

```text
지금 과제 작업 폴더의 sk-kit/AGENTS.md와
sk-kit/.agents/skills/sk-kit/SKILL.md를 먼저 읽어줘.
실제 과제 원문과 응시 규칙을 최우선으로 따라줘.

1. 제공된 과제 README·파일·실행 환경·제출 위치를 먼저 확인해.
2. 필수/선택/금지 조건과 확인 가능한 완료 기준을 짧게 정리해.
3. 필요한 sk-* Skill만 추가로 읽고 핵심 기능을 최소 범위로 구현해.
4. 실제 실행·테스트와 그 결과, 미검증 항목을 구분해 설명해.
5. sk-kit은 공개 참고 자료야. 과제 코드와 제출물은 sk-kit 밖에 작성하고,
   문제·데이터·답안을 외부로 보내거나 GitHub에 업로드하지 마.
```

`git clone`은 파일 복제일 뿐 Skill 자동 등록이 아닙니다. **파일을 읽으라고 명시하는 방식**이 가장 확실합니다. 위 경로는 *과제 작업 폴더에서 clone을 실행한 경우*의 상대경로입니다.

### ③ 웹 과제 실행·검증

- 먼저 제공된 기술 스택과 실행법을 확인하세요. React, Python, FastAPI 등의 설치를 미리 가정하지 마세요.
- 서버를 띄울 때 **실제 포트**와 `0.0.0.0` 바인딩을 확인하세요. 웹 IDE의 **내장 Browser 미리보기**에서 포트·경로를 설정하고 입력/버튼/화면 동작을 검증하세요.
- 실행한 서버의 터미널을 닫으면 서버가 종료될 수 있습니다. 실행·테스트 실패를 성공으로 보고하지 마세요.
- 플랫폼 밖의 별도 브라우저를 열어 직접 시험 자료를 조회하는 방법은 가이드의 허용 범위를 벗어납니다.

## 2. 필요한 Skill만 사용하기

| 할 일 | 파일 |
| --- | --- |
| 작업 시작·스킬 선택 | `sk-kit/.agents/skills/sk-kit/SKILL.md` |
| 과제 요구사항 정리 | `sk-kit/.agents/skills/sk-requirement-check/SKILL.md` |
| 최소 구현 순서 | `sk-kit/.agents/skills/sk-solution-plan/SKILL.md` |
| 실제 코드 작성 | `sk-kit/.agents/skills/sk-build-minimum/SKILL.md` |
| 실행 오류·테스트 | `sk-kit/.agents/skills/sk-test-debug/SKILL.md` |
| 제출 근거 점검 | `sk-kit/.agents/skills/sk-evidence-report/SKILL.md` |
| 반도체 수율·검사·설비 데이터 | `sk-kit/.agents/skills/sk-semiconductor/SKILL.md` |
| 예측 모델·데이터 누수 방지 | `sk-kit/.agents/skills/sk-model-eval/SKILL.md` |

상황별 긴 프롬프트는 [`prompts/sample-prompts.md`](prompts/sample-prompts.md)에 있습니다. 과제가 요구하지 않으면 데이터 분석이나 AI 모델을 임의로 추가하지 마세요.

**선택 설치 (필요한 경우만):** `bash ./sk-kit/scripts/install-to-project.sh .`는 현재 폴더에 없는 Skill과 지침을 복사합니다. 과제 제출 폴더에 불필요한 지침 파일이 들어갈 수 있으므로 **기본 권장 방식은 직접 경로 참조**입니다. 자동 인식 여부는 제공된 Codex에서 별도 확인해야 합니다. Windows용 `.ps1` 스크립트는 개인 PC에서만 선택적으로 사용하세요.

## 3. 제출 직전 반드시 확인

1. 과제의 **필수 파일명·위치·저장 상태**가 맞는가?
2. 검증 명령·실행 결과·남은 미완료 항목을 구분했는가? 웹 과제라면 내장 Browser에서 사용자 동작을 확인했는가?
3. `sk-kit/` 및 `sk-kit/.git`이 제출물에 불필요하게 들어가지 않는가? **웹 IDE의 제출 미리보기는 일부 파일을 생략할 수 있으므로, 실제 제출 범위는 과제 안내/Cofa Helper로 확인**하세요.
4. 평가 문제·데이터·결과물·비밀키를 외부로 보내지 않았는가? **시험 중 `git push`는 불가합니다.**
5. 제출물 확정 후에는 파일을 수정할 수 없으므로 저장 상태를 확인한 다음 제출하세요.

**후속 서술형:** 제출물 확정 뒤 진행하는 서술형은 AI 및 복사·붙여넣기 사용이 금지되어 있습니다. 본인이 직접 답변해야 합니다.

## 4. 시험 전에 개인 PC에서 GitHub 공개 저장소 갱신하기

시험 중 업로드 명령과 혼동하지 않도록, **시험 전 개인 PC에서만** 수행하는 GitHub 반영 절차를 [`PUBLISHING.md`](PUBLISHING.md)에 분리했습니다.

- 공개 저장소: **https://github.com/ddang-mok/sk-kit**
- 공개 자료는 안내된 유지 기한까지 공개 상태를 유지하세요(최신 공지 우선).
- 공개 배포 전 [`THIRD-PARTY-NOTICES.md`](THIRD-PARTY-NOTICES.md)와 MIT 라이선스 고지를 확인하세요.

## 5. 포함 파일

```text
sk-kit/
├── README.md
├── AGENTS.md
├── PUBLISHING.md                  # 시험 전 GitHub 재업로드 가이드
├── .agents/skills/sk-*/SKILL.md   # 8개 지침 + 참고 문서
├── scripts/install-to-project.sh # 웹 IDE/Linux용 선택 복사
├── scripts/install-to-project.ps1# Windows 개인 PC용 선택 복사
├── prompts/sample-prompts.md
├── checklists/final-check.md
├── templates/work-record.md
├── THIRD-PARTY-NOTICES.md
├── LICENSES/cofa-MIT.txt
├── SOURCES.json
└── VALIDATION.md
```

**비공식 개인 키트**이며 SK하이닉스, Cofa, OpenAI의 공식 제품이 아닙니다. 권한·실행 여부·제출 방법은 실제 플랫폼에서 확인해야 합니다.
