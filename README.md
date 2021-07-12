# 🍎 Juice Maker Retrial

<br/>

### 기존 프로젝트 진행일(~3월 19일) -> 재시도일(7월 8일)

<br/>

## 📝 Review

<br/>

- 약 3개월전에는 손도 못댔던 프로젝트를 재시도했습니다. 비교적 빠른 시간에 완성하였습니다. 아래는 프로젝트의 결과물과 진행시 학습했던 내용입니다.

<br/>

## 🧐 고민한 점

<br/>

- 과일 재고의 개수를 어떻게 가질 것인가?:

  과일 재고의 경우 여러 객체에서 접근해야하고, 하나의 인스턴스로 관리하려면 싱글톤으로 처리해야한다고 생각했습니다. 하지만 이것은 과한 코스트이므로 static 선언을 했습니다.

<br/>

## 🧑🏻‍💻 학습한 내용

<br/>

- Storyboard의 UI는 아직 익숙치 않습니다. 그래서 버튼 타이틀에 줄바꿈을 하는 옵션을 새롭게 알게 되었습니다.

  목표는 바나나쥬스 주문 버튼도 딸기쥬스 주문처럼 두 줄 표현으로 변경하는 것입니다.

  ![2](/Users/seungjinbaek/Desktop/2.png)

  버튼의 옵션에서 Plain을 Attributed로 변경해줍니다.

  ![1](/Users/seungjinbaek/Desktop/1.png)

  이제 title을 customize 할 수 있습니다.

  여기서 줄바꿈은 control(^) + enter 입니다.

  <br/>

- struct의 프로퍼티가 private일 경우 memberwise init이 private이므로 동작하지 않습니다. 수동으로 생성해주어야 합니다.
