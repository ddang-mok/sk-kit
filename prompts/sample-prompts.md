# Codex에 붙여 넣는 작업 프롬프트 (웹 IDE)

**전제:** 실제 과제 폴더의 터미널에서 `git clone https://github.com/ddang-mok/sk-kit.git`을 실행하여 `sk-kit/`이 존재합니다. 현재 과제 지침과 시험 규칙이 아래 예시보다 우선합니다. 복제 위치가 다르면 경로를 실제 위치로 바꾸세요.

## 첫 요청: 과제 시작

```text
sk-kit/AGENTS.md와 sk-kit/.agents/skills/sk-kit/SKILL.md를 먼저 읽어줘.
과제의 README·기존 파일·제출 위치·실행 방법부터 확인해줘.
필수 요건과 제한을 구분한 뒤, 필요한 Skill만 참고해 작은 기능부터 구현해줘.
실제 테스트 결과와 확인하지 못한 부분을 분리해서 알려줘.
sk-kit 폴더 안에 답안을 만들거나 외부로 문제/결과물을 전송하지 마.
```

## 요구사항 확인만

```text
sk-kit/.agents/skills/sk-requirement-check/SKILL.md를 참고해줘.
과제 원문에서 필수 결과·입출력·제출 경로·제약을 인용 위치와 연결해줘.
지금은 기존 파일을 변경하지 마.
```

## 웹사이트 / 대시보드

```text
sk-kit/.agents/skills/sk-solution-plan/SKILL.md와
sk-kit/.agents/skills/sk-build-minimum/SKILL.md를 읽어줘.
기존 프레임워크로 핵심 사용자 동작을 먼저 만들고 실행해줘.
내장 Browser 미리보기에서 실제 포트·경로로 입력/버튼/화면을 확인해줘.
서버는 필요한 경우 0.0.0.0에 바인딩하고 실행 터미널을 유지해줘.
검증하지 못한 기능을 완료했다고 말하지 마.
```

## 데이터·반도체 분석

```text
sk-kit/.agents/skills/sk-semiconductor/SKILL.md를 참고해줘.
Lot/Wafer/Die와 검사 단위, 시간, 키, 분모와 재검사 처리 기준을 먼저 확인해줘.
원본은 유지하고 결측·중복·조인으로 인한 수량 변화와 손계산 대조를 해줘.
관찰 사실과 원인 가설을 따로 기록해줘.
```

## 모델 학습이 실제 과제에 포함된 경우

```text
sk-kit/.agents/skills/sk-model-eval/SKILL.md를 참고해줘.
예측 시점과 라벨을 정하고 그룹·시간 누수를 확인해줘.
기준선과 후보를 같은 조건으로 비교하고 최종 테스트를 선택에 사용하지 마.
실행한 실제 수치만 보고해줘.
```

## 오류가 발생했을 때

```text
sk-kit/.agents/skills/sk-test-debug/SKILL.md를 참고해줘.
오류를 현재 환경에서 재현하고 원인을 좁혀 최소 범위를 수정해줘.
같은 명령을 다시 실행해 수정 전후 결과를 비교해줘.
```

## 제출 직전

```text
sk-kit/.agents/skills/sk-evidence-report/SKILL.md와
sk-kit/checklists/final-check.md를 참고해줘.
실제 과제 제출 기준에 맞춰 파일 경로, 저장 상태, 필수 동작,
테스트 결과와 미완료 작업을 점검해줘.
공개 참고 키트와 .git이 제출 결과에 섞였는지 확인하고,
문제·데이터·답안을 외부로 전송하지 마.
```

**주의:** 후속 서술형 단계에서는 AI 사용과 복사·붙여넣기가 금지됩니다. 위 프롬프트를 사용하지 마세요.
