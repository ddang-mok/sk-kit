---
name: sk-kit
description: "sk-kit으로 과제 요구사항부터 구현·검증·근거 정리까지 진행하거나 현재 단계에 맞는 스킬을 선택할 때 사용한다. 반도체 분석과 예측 평가는 해당 요구가 있을 때만 연결한다."
---

# sk-kit으로 작업 시작하기

현재 요청과 프로젝트의 README·기존 파일·실행 환경에서 출발한다. 사용자에게 필요한 결과와 이미 완료된 작업을 확인하고 다음 작업에 필요한 스킬만 읽는다. 단순 수정에는 전체 과정을 새로 만들지 않는다.

## 작업에 맞춰 선택

| 지금 필요한 것 | 읽을 스킬 |
|---|---|
| 필수 기능·입출력·제출 조건 확인 | [sk-requirement-check](../sk-requirement-check/SKILL.md) |
| 구현 범위·순서·기술 선택 | [sk-solution-plan](../sk-solution-plan/SKILL.md) |
| 실행 가능한 작은 기능 | [sk-build-minimum](../sk-build-minimum/SKILL.md) |
| 오류 수정·기능 확인 | [sk-test-debug](../sk-test-debug/SKILL.md) |
| 제출·인계 전 근거 정리 | [sk-evidence-report](../sk-evidence-report/SKILL.md) |
| 수율·검사·결함·설비 분석 | [sk-semiconductor](../sk-semiconductor/SKILL.md) |
| 실제 분류·회귀 모델 학습·평가 | [sk-model-eval](../sk-model-eval/SKILL.md) |

일반적인 흐름은 요구사항 → 계획 → 최소 구현 → 검증 → 보고다. 오류 수정은 재현부터, 기존 분석의 검토는 데이터 계약과 검증부터 시작할 수 있다. 분석만 필요한 요청에 웹앱이나 모델을 추가하지 않는다.

## 진행 중 남길 근거

중요 요구사항에는 원문 위치와 완료 기준을 연결한다. 구현·분석 뒤 실제 실행 결과와 미실행 범위를 기록한다. 결과를 바꿀 수 있는 미확정 조건은 최종 결론과 분리한다.

사용자가 별도 형식을 지정하지 않았고 여러 단계의 기록이 필요하면 [작업 기록 양식](../../../templates/work-record.md)을 선택해서 사용한다. 제출·인계가 가까우면 [최종 점검표](../../../checklists/final-check.md) 중 해당 항목만 확인한다.

이 키트는 지침 묶음이다. 파일에 없는 CLI·MCP·라이브러리가 설치되어 있다고 가정하지 않는다. 외부 작업의 권한은 현재 요청과 환경에서 확인한다.
