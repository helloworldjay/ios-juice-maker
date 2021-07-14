# 🍎 Juice Maker Retrial

<br/>

### 기존 프로젝트 진행일(~3월 19일) -> 재시도일(7월 8일)

<br/>

![test](https://user-images.githubusercontent.com/58765757/125554368-5964b5a7-c20f-40e4-9a30-98486b81c60f.gif)

<br/>

## 📝 Review

<br/>

- 약 3개월전에는 손도 못댔던 프로젝트를 재시도했습니다. 비교적 빠른 시간에 완성하였습니다. 아래는 프로젝트의 결과물과 진행시 학습했던 내용입니다.

<br/>

## 📂 전체 구조

<br/>

![3](https://user-images.githubusercontent.com/58765757/125555093-79514a70-480e-4075-b062-c4e941e3c2bf.png)

<br/>

- Controller: ViewController와 과일 재고에 변화를 주는 기능과 ViewController가 있습니다.
  - FruitStockManager: struct 구조로 내부에 static 딕셔너리를 통해 재고를 관리합니다.
  - JuiceMaker: 쥬스를 만드는 작업을 합니다. 과일 재고를 줄이는 역할을 합니다.
  - ViewController: 메인 화면을 관리합니다.
  - StockManagerViewController: 재고 관리 화면을 관리합니다.
- Model: 과일 재고에 대한 관리를 합니다. 
  - JuiceRecipe: 쥬스의 종류마다 필요한 과일의 개수를 관리합니다.
  - FruitStock: 과일 재고를 struct로 구성하여 관리합니다. 각각의 과일은 enum으로 관리되는 타입과 수량을 갖습니다.
  - JuiceMakerError: 앱에 관련된 에러를 관리합니다. 

<br/>

## 🧐 고민한 점

<br/>

- 과일 재고의 관리를 어떻게 할 것인가?:

  과일 재고의 경우 여러 객체에서 접근해야하고, 하나의 인스턴스로 관리하려면 싱글톤으로 처리해야한다고 생각했었습니다. 하지만 싱글톤의 경우 테스트가 어렵고, 객체지향에 적합하지 않은 구조를 가질 수 있기 때문에 지양해야 한다는 것을 알게 되었습니다. 그래서 struct로 선언한 후(상속의 이유가 없으므로) 인스턴스를 생성해서 JuiceMaker에 넘겨주는 형태로 사용했었습니다. 하지만 이렇게 되면 2번째 ViewController에서 접근이 힘들어지기 때문에 struct에 static을 사용하는 구조로 구현했습니다. 

<br/>

## 🧑🏻‍💻 학습한 내용

<br/>

- Storyboard의 UI는 아직 익숙치 않습니다. 그래서 버튼 타이틀에 줄바꿈을 하는 옵션을 새롭게 알게 되었습니다.

  목표는 바나나쥬스 주문 버튼도 딸기쥬스 주문처럼 두 줄 표현으로 변경하는 것입니다.

  ![2](https://user-images.githubusercontent.com/58765757/125372991-4a50cc80-e3bf-11eb-96fb-7d19ef98dd7e.png)

  버튼의 옵션에서 Plain을 Attributed로 변경해줍니다.

  ![1](https://user-images.githubusercontent.com/58765757/125372891-12498980-e3bf-11eb-8358-c4b01a7060cc.png)

  이제 title을 customize 할 수 있습니다.

  여기서 줄바꿈은 control(^) + enter 입니다.

  <br/>

- struct의 프로퍼티가 private일 경우 memberwise init이 private이므로 동작하지 않습니다. 수동으로 생성해주어야 합니다.
