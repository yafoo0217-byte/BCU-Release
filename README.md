# BCU 실행기 배포판

BCU(0.5.8.9)용 **Stage VS 모드**와 오류 수정 패치를 자동으로 받아 주는 실행기의 배포 저장소예요.

## 처음 설치
1. 오른쪽 **Releases**에서 최신 버전을 열고 `BCU-Launcher-setup.zip`을 받아요.
2. 압축을 풀어서 `BCU-Launcher.jar`, `BCU 실행기.bat`을 BCU 폴더(`BCU_lib` 폴더가 있는 곳)에 넣어요.
3. `BCU 실행기.bat`을 더블클릭해요. 처음 켜면 최신 패치를 알아서 받아요.

> `BCU-Initializer.jar` 대신 `BCU 실행기.bat`으로 켜 주세요. Initializer로 켜면 패치가 지워질 수 있어요. (그래도 실행기가 알아채고 되돌려 줘요.)

## 실행기로 할 수 있는 것
- 켤 때 새 버전 확인, 바뀐 점 안내
- **일반 모드 / VS 모드** 골라서 켜기
- 이전 버전으로 되돌리기
- BCU가 오류로 꺼지면 **오류 로그 도우미**로 로그 복사

## 릴리스에 들어 있는 파일
| 파일 | 설치 위치 | 설명 |
|---|---|---|
| `BCU-Launcher-setup.zip` | - | 처음 설치용 (실행기 + bat) |
| `BCU-VS-0-5-8-9.jar` | BCU 폴더 | VS 모드 |
| `BCU-0-5-8-9.jar` | BCU 폴더 | 일반 모드 (언어 오류 보호 장치 포함) |
| `lang-fr-ComboName.txt` | `assets/lang/fr/ComboName.txt` | 깨진 줄을 고친 언어 파일 |
| `manifest.json` | - | 실행기가 읽는 파일 목록과 지문 |

소스와 개발 기록은 비공개 작업 저장소에 있어요.
