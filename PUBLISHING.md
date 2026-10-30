# GitHub 공개 저장소 갱신 — **시험 전 개인 PC에서만**

대상 저장소: https://github.com/ddang-mok/sk-kit

**경고:** 여기에 나오는 `git push`는 시험장에서 실행하지 않습니다. 시험 중에는 허용된 `git clone`만 사용하고, 문제·데이터·결과물은 외부로 전송하지 마세요.

## 기존 공개 저장소에 수정본 올리기 (권장)

1. 이 ZIP의 **안쪽 `sk-kit/` 폴더**를 압축 해제합니다. `README.md`, `AGENTS.md`, `.agents/skills/`가 이 폴더 바로 아래에 있어야 합니다. ZIP 자체를 저장소에 넣지 않습니다.
2. **시험 전 개인 PC**의 Git Bash나 터미널에서 다음 명령을 실행합니다. 해당 폴더가 이미 있으면 새 빈 위치에서 실행하세요.

```bash
git clone https://github.com/ddang-mok/sk-kit.git
cd sk-kit
```

3. 압축 해제된 수정본 `sk-kit/` 폴더의 **내부 파일·폴더 전체**를 지금 복제한 `sk-kit/` 폴더에 복사하여 덮어씁니다. 숨김 폴더 `.agents` 및 `.gitignore`까지 포함하세요. **복제된 저장소의 `.git` 폴더는 지우거나 덮어쓰지 마세요.**
4. `git status`로 변경 파일을 확인하고, 공개하면 안 되는 시험 문제·비밀번호·키·개인정보·비공개 파일이 들어 있지 않은지 확인합니다. 권리·라이선스 고지는 `THIRD-PARTY-NOTICES.md`를 참고하세요.
5. 정상일 때만 개인 PC에서 다음을 실행합니다.

```bash
git add -A
git status
git commit -m "Align sk-kit with web IDE exam"
git push origin main
```

이미 같은 내용이면 `nothing to commit`이 나올 수 있습니다. 원격 기본 브랜치가 `main`이 아닌 경우 실제 브랜치 이름에 맞추세요. 다른 사람이 원격을 수정했다면 덮어쓰거나 강제 push하지 말고 변경 사항을 확인하세요.

## 게시 후 검증 (시험 전 개인 PC)

다른 **빈 폴더**로 이동한 뒤 아래를 수행합니다.

```bash
git clone https://github.com/ddang-mok/sk-kit.git
test -f sk-kit/README.md && echo 'README OK'
test -f sk-kit/AGENTS.md && echo 'AGENTS OK'
test -f sk-kit/.agents/skills/sk-kit/SKILL.md && echo 'SKILL OK'
```

모두 확인되더라도 시험장 Git 접근, 네트워크 상태, Codex에서 스킬 적용 여부는 **별도**입니다. 허용된 사전 체험에서 확인하세요.

## GitHub 웹 화면으로 업로드하려는 경우

`Add file` → `Upload files`로 파일을 올릴 수 있지만, `.agents/` 같은 **숨김 폴더 누락**을 특히 주의하세요. ZIP 파일 하나만 업로드하면 `git clone` 이후 안에 있는 Skill들이 바로 사용 가능한 폴더 구조로 만들어지지 않습니다. 그래서 기존 저장소를 Git으로 갱신하는 방법을 권장합니다.
