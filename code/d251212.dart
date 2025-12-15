// class 클래스명 { 이 안에 구성요소 배치 }
import 'dart:io';

class Score {
  // 우선순위로 정할거
  // 1. 속성 : 점수 (숫자)
  int point;
  // 2. 메서드 : 점수 (속성 중 하나)를 출력하는 기능
  // 반환타입 함수이름(매개변수) {실행할 코드}

  void showInfo() {
    print("점수 :$point");
  }

  // 3. 생성자 : 점수 (속성)을 초기화
  Score(this.point);
}

// - 상속
//     - 특정 클래스의 속성과 메서드들을 모두 포함하여 확장해서 구현하고 싶을 때
//     - `extends` 라는 키워드를 사용

class StudentScore extends Score {
  // Score 클래스의 구성요소가 포함됨
  // 🚨 상속은 반드시 하나의 클래스만 가능
  // 현재 속성 : point, 메서드: showInfo 가지고 있음
  String name;

  // @override => 어노테이션 => 코드의 메타데이터 => 안붙여도 실행하는데 문제 X => 재정의 했다는걸 다른 개발자에게 혹은 내가 보기 편하게 하려고 강력히 사용 권장

  @override
  void showInfo() {
    print("이름 : $name ,점수 : $point");
  }

  // 생성자
  // 부모의 키워드다 => super
  StudentScore(this.name, super.point);
}

void main() async {
  // 1. 파일 객체 생성
  File txt = File("students.txt");
  // 2. 문자열로 불러오기
  // txt.readAsStringSync(); => Flutter 사용x.,애니메이션 있을 때 끊김,

  // TODO 심화에서 한번 더 다루기
  String txtString = await txt.readAsString();
  // 홍길동,90
  // 김철수,80
  // 1. 개행단위로 구분
  // ["홍길동,90", "김철수,80"]
  final joolDeul = txtString.split('\n');
  // 2. 각 줄마다 콤마단위로 구분
  // for in문 => 우측의 리스트를 좌측의 변수에 하나씩 담는다.
  List<StudentScore> haksangdeul = [];
  for (String jool in joolDeul) {
    // ["홍길동", "90"]
    // ["김철수", "80"]
    final jinjjaBunli = jool.split(",");
    final erum = jinjjaBunli[0];
    final jeumSoo = jinjjaBunli[1];
    final sutjaJeumsoo = int.parse(jeumSoo);
    final studentScore = StudentScore(erum, sutjaJeumsoo);
    haksangdeul.add(studentScore);
  }

  print("어떤 학생의 점수를 확인하시겠습니까?");
  String sayongjaIpRuk = stdin.readLineSync()!;
  // haksangdeul 이라는 리스트에 담긴 학생 이름과 sayongaiIpRak 이라는 입력값과 비교해서 있는지 여부 확인
  // haksangdeul : [StudentScore("홍길동", 90), StudentScore("김철수", 90)]
  StudentScore? chatneunHaksang = null;

  for (StudentScore haksang in haksangdeul) {
    if (sayongjaIpRuk == haksang.name) {
      chatneunHaksang = haksang;
      break;
    }
  }

  if (chatneunHaksang == null) {
    print("잘못된 학생이름을 입력하였습니다.");
  } else {
    print("이름 : ${chatneunHaksang.name} 점수 : ${chatneunHaksang.point}");
  }
}
