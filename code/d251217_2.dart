void main() {
  //
  print("프로그램 실행됨");
  Human h1 = Human("강성훈", age: 20, gender: "MALE", hairColor: "Black");
  Human h2 = Human(
    "이지원",
    age: 20,
    gender: "MALE",
    child: Human("상구", age: 9, gender: "MALE"),
  );
}

// 생성자
// 객체의 속성을 초기화하는 특별한 함수
// 함수 => 네임드파라미터, 위치파라미터 사용 가능!

class Human {
  // 클래스 구성요소 : 속성, 메서드, 생성자
  // 속성
  String name;
  int age;
  String gender;
  String? hairColor;
  // 생성자
  Human? child;
  Human(
    this.name, {
    required this.age,
    required this.gender,
    this.hairColor,
    this.child,
  });
}
