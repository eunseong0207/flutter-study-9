void main() {
  //
  printABC(10, "BBB", "CCC");
  // printABC("BBB", 10, "CCC"); => 순서가 달라서 안됨
  printDEF(d: 10, e: "EEE", f: "FFF");
  printDEF(e: "EEE", d: 10, f: "FFF");
  //
  printGHI("123", h: 10);
  printGHI("123", i: "234", h: 10);
}

// 섞어서 사용가능
// 앞에는 위치 파라미터, 뒤에 네임드 파라미터
// {}안에 사용할때는 reauired 를 변수 앞에 작성해야함 , 변수 뒤에 ?가 들어갈경우 널타입으로 바뀌기에 값을 입력을 해도 안해도 상관없음
void printGHI(String g, {required int h, String? i}) {
  print("g : $g , h : $h , i : $i");
  //
}

// 함수의 파라미터
// 1. 위치 파라미터 => 소괄호 안에 바로 타입과 변수명 선언
// 사용할 땐 반드시 파리미터 선언된 수선대로만 사용 => 3번줄
void printABC(int a, String b, String c) {
  //
  print("a: $a ,b: $b, c: $c ");
}

// 2. 네임드 파라미터
// required 키워드는 함수 사용시 반드시 넘겨줘야하는 키워드
// 사용할 때 파라미터 순서 상관 X
void printDEF({required int d, required String e, required String f}) {
  //
  print("d : $d , e : $e , f: $f");
}
