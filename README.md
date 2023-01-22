## web view
- pub.dev 페이지 방문
- web view 검색 후 web_view_flutter 선택 (`flutter.dev` 가 공식 플러터 개발팀)
- pubspec.yaml에 web_view_flutter 옆에 복사 버튼 누른거 cupertino_icons 밑에 붙여넣기
  - 강의를 위해 3.x.x 버전 넣음. 2023-01-22 기준 4.x.x 나왔으니 바뀐점 확인하기
- andriod > app > build.gradle > minSdkVersion 바꾸기 (web_view_flutter 페이지 내 나와있는 내용임)

### PlatformException
- 서버 내리기 > 터미널 > flutter clean > 다시 서버올리기