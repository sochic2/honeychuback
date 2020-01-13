# honey chu_backend

- Visual Studio Code로 프로젝트 생성, 시작, F5로 Debug 했을 때 최초 오류 발생

  - 해결 : src/resources에 application.yml 만듬

  ```yml
  spring:
    datasource:
      driver-class-name: com.mysql.cj.jdbc.Driver
      url: jdbc:mysql://localhost:3306/example?serverTimezone=UTC&characterEncoding=UTF-8
      username: root
      password: 1234
  ```

  google에서 찾아서 추가해봄