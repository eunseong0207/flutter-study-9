import 'dart:io';

void main() async {
  // 파일 불러와서 "00님의 성적은 00점 입니다." 형태로 출력
  // 1. 파일 불러오기
  // 절대경로 vs 상대경로
  // 절대경로 : 컴퓨터 안에 최상위 경로부터 전부 적어야함, git에 올릴경우 상대가 못 씀
  // 상대경로 : 현재 위치부터의 경로/ 현재경로 터미널에서의 위치, git에 올려도 상대가 쓸 수 있음
  File txtFile = File('students.txt'); // ..<상위 폴더 개념
  // 파일만 불러옴
  String content = await txtFile.readAsStringSync();
  // 파일 안에 내용도 불러옴
  // 2. 첫번째줄 불러오기
  // split 함수
  // - String 클래스가 가지고 있는 메서드
  // - 인자로 넘겨준 문자열을 기준으로 분리해서 List에 담아줌
  List<String> lines = content.split('\n'); // \n : 한줄 띄기
  List<Student> studentList = [];
  //
  for (String nameAndScore in lines) {
    // String gildong = lines[0];
    // 3. 이름과 점수 구분짓기
    // nameAndScoreList : ["홍길동","90"]
    List<String> nameAndScoreList = nameAndScore.split(',');

    // print(nameAndScoreList[0]);
    // print(nameAndScoreList[1]);

    String name = nameAndScoreList[0];
    // int.parse => 숫자가 들어가있는 문자열을 숫자형태(int)로 바꿔줌
    // ---
    // int.parse("ABC");
    // tryParse = "ABC"라는 문자열을 파싱해서 에러났을 때 null이 반환되는데,
    // ?? 0 = null일땐 0일 abc라는 변수에 넣어라
    // int abc = int.tryParse("ABC") ?? 0 ;
    // ---
    int score = int.tryParse(nameAndScoreList[1]) ?? 0;
    print(name);
    print(score);
    // 이름과 점수를 담아 객체만들기
    Student s = Student(name, score);
    studentList.add(s);
  }
}

class Student {
  String name;
  int score;
  Student(this.name, this.score);
}
