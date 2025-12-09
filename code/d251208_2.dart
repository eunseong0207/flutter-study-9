import 'dart:convert';

void main() {
  // 2는 고정
  // 곱해지는 수가 1씩 증가

  // 첫번째 단계 : 1부터 9까지 반복문으로 출력하기
  // 두번째 미션 : 2단부터 9단까지 출력
  // 2단 출력
  // for (var i = 1; i <= 9; i++) {
  //   print('2 * $i = ${2 * i} ');
  // }

  // 변수를 하나 줘서 조금더 간소화 된 느낌?
  // for (var i = 1; i <= 9; i++) {
  //   int sum = 3 * i;
  //   print("3 * $i = $sum");
  // }
  // 2단 부터 9단까지
  for (int j = 1; j <= 9; j++) {
    mulTable(j);
  }

  mulTable(3);
  mulTable(7);

}


/// 특정 단수의 구구단을 출력하는 함수!
///
/// [number] : 출력할 단 번호
///
void mulTable(int number) {
  // ===== 함수 시작 =====
  for (int i = 1; i <= 9; i++) {
    print('$number * $i = ${number * i}');
  }
  // ===== 함수 끝 =====
}
