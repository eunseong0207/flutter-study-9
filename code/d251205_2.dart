/// 회문 판별
///
/// 회문 : 글자를 앞에서 읽으나 뒤에서 읽으나 같은 글자
///
/// ex) level, eye, kayak, noon, reviver
///
void main() {
  // print(isPalindrome("level"));
  print(isPalindrome("reviver"));
  // print(isPalindrome("test"));
}

/// 문자열을 입력받아서
///
/// 회문(Palinderome)이면 true
///
/// 아니면 false
///
/// 반환하는 함수
bool isPalindrome(String str) {
  // ====== 함수 시작 =====
  // "level"
  // 1. 문자열을 한글자씩 새로운 리스트에 뒤집어서 담기 -> 뒤집은 문자의 리스트와 기존 리스트 비교
  //    => "level"이라는 문자열의 경우 5 + 5 번의 반복이 이루어짐
  //    => 한글자씩 담긴 리스트 (길이 5) + 뒤집은 문자열 담은 리스트 (길이 5) => 길이 10정도 필요

  // 2. 문자열 한글자씩 새로운 리스트에 담기 -> 리스트 반복하면서 첫글자와 끝글자 비교
  //    => 반복문에서 i 번째 글자와 (리스트 길이 - i - 1)  번째 글짜 비교
  //    => "level"이라는 문자열의 경우 = 2번의 반복이 이루어짐
  //    => 한글자씩 담긴 리스트 (길이 5) => 길이 5정도 필요
  //  공간복잡도 : 메모리 공간을 얼마나 차지하는지 (RAM과 관련)
  //  시간복잡도 : 얼마나 걸렸는지 (CPU와 관련)

  // 2번 방법으로 진행
  List<String> charList = str.split(''); // 한 글자씩 분리하고 싶을때는 빈 문자열 "split"
  int halfIndex = charList.length ~/ 2; // 2로 나눴을 때 나머지
  for (var i = 0; i < halfIndex; i++) {
    // i => 0
    // 첫글자, 끝글자
    // reviver
    String char1 = charList[i];
    int endIndex = charList.length - 1 - i;
    String char2 = charList[endIndex];
    if (char1 != char2) {
      return false;
    }
  }
  return true; // 끝까지 비교하기 위해 if문 밖에 true 씀
  // ===== 함수 끝 =====
}
