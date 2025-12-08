/// 별 피라미드 출력 하기
void main() {
  //        *
  //       ***
  //      *****
  //     *******
  //    **********
  //   ************
  //  **************
  // ****************

  // int star = 1;
  // print("        ${"*" * star}");
  // star = star + 2; // => 3
  // print("       ${"*" * star}");
  // star = star + 2; // => 3+2 = 5
  // print("      ${"*" * star}");
  // star = star + 2; // => 5+2 = 7
  // print("     ${"*" * star}");
  // star = star + 2; // => 7+2 = 9
  // print("    ${"*" * star}");
  // star = star + 2; // => 9+2 = 11
  // print("   ${"*" * star}");
  // star = star + 2; // => 11+2 = 13
  // print("  ${"*" * star}");
  // star = star + 2; // => 13+2 = 15
  // print(" ${"*" * star}");

  int star = 1;
  for (var i = 0; i <= 7; i++) {
    // 1단 => 별 1개
    // 2단 => 별 3개
    // 3단 => 별 5개...
    // 별이 2씩 증가
    String space = ' ' * (7 - i);
    // 여기서 별 출력
    // 공백 => -1씩 빼는거 : Strint 7-"i"
    print(space + '*' * star);
    star = star + 2; // => star 15
  }
  // 별이 반대로 감소 하는 걸로 만듬
  for (var i = 1; i <= 7; i++) {
    int spaceCount = i + 0;
    star = star - 2; // => star 13
    // print("공백 : $spaceCount 현재별개수 : $star");  => 공백 1 => 1++
    print(' ' * spaceCount + '*' * star);
  }
}
