# sk-kit 공개용 개정본 검증 기록

## 확인한 범위

- 제공 ZIP의 중첩된 `sk-kit/sk-kit/`를 출고 ZIP에서는 **단일 `sk-kit/` 루트**로 정리했다.
- 시험 웹 IDE의 리눅스형 터미널을 기준으로 README·프롬프트를 작성했다.
- 기본 복제 명령을 `git clone https://github.com/ddang-mok/sk-kit.git`으로 통일했다.
- `AGENTS.md`, `prompts/sample-prompts.md`, 스크립트 사용 예제의 과거 `_sk-kit` 참조를 교체했다.
- GitHub 공개 저장소 갱신은 `PUBLISHING.md`에 **시험 전 개인 PC 작업으로만** 구분했다.
- 공개용 범용 스킬·작업 지침·체크리스트·양식을 새로 작성하고 Cofa MIT 고지와 출처 추적은 보존했다.
- 검증 항목: Bash 문법, 선택 설치의 파일 보존, 필수 8개 Skill 파일 존재, 단일 ZIP 루트, 로컬 Git clone.

## 검증 한계

- 공개 GitHub 저장소의 실제 최신 상태, 원격 push, 시험 플랫폼의 Git/네트워크 허용 여부, Codex의 Skill 자동 인식은 이 파일 제작만으로 확인되지 않는다.
- 시험의 실제 과제·서버·제출물은 제공되지 않았으므로 실행 성공을 보장하지 않는다.
- 제3자 자료의 최종 공개 배포 적법성은 `THIRD-PARTY-NOTICES.md`를 참고하여 게시자가 확인한다.

## 체크 명령 (개인 PC 또는 검증용 환경)

```bash
bash -n scripts/install-to-project.sh
find .agents/skills -maxdepth 2 -name SKILL.md -type f
```

실제 GitHub에 반영한 뒤 별도의 빈 폴더에서 `git clone https://github.com/ddang-mok/sk-kit.git`을 다시 실행해 확인해야 한다. 시험 중에는 `git push`할 수 없다.
