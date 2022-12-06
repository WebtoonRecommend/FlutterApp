import 'package:application4/core/app_export.dart';
import 'package:application4/data/models/user.dart';


class UserController extends GetxController {
  var userid = "".obs();
  var user = User(ID: "").obs();

  Repository myRepository = Get.find<Repository>();

  ///userid 등록 함수
  setID(var userid) {
    this.userid = userid;
    this.user.ID = userid;
    myRepository.setUserid(userid);
  }

  /// token 등록 함수
  setToken(String token) {
    this.user.token = token;
    myRepository.setToken(token);
  }

  /**
   * 로그인 검증.
   *
   * 만약 옳은 값이라면 User 데이터를 aws에서 가져와 User 클래스에 저장.
   *
   ** id 존재 O, id & passwd 일치 O => 0
   ** id 존재 O, id & passwd 일치 X => 1
   ** id 존재 X => 2
   ** user 정보를 가져오는데 실패함 => 3
   */
  Future<int> updateUser(String userName, String userPassword) async {

    setID(userName);
    var loginStatus = await _isMatch(userPassword);

    if (loginStatus == "2") return 2;
    else if (loginStatus == "1") return 1;
    else {
      // 로그인 성공
      // id, pw 일치하면 token 저장(loginStatus가 jwt토큰임)
      setToken(loginStatus.substring(1,loginStatus.length-1));

      // login 로그 기록
      bool isAlreadyExist = false;
      for (final element in myRepository.expiration){
        if (element.name == userName){
          isAlreadyExist = true;
          break;
        }
      }
      if (!isAlreadyExist){
        await myRepository.postLocalDatabase();
      }

      //서버에서 userid로 검색후 유저정보 가져옴
      var userTmp = await myRepository.fetchUserData();
      if (userTmp != null) {
        this.user = userTmp;
        print(this.user.ID);
        return 0;
      }
      else return 3;
    }
  }

  /// ID, PW 일치하는지 체크하는 함수
  _isMatch(String passwd) async {
    return await myRepository.getJWT(passwd);
  }

  /// ID가 존재하는지 체크하는 함수
  isIdExist(String passwd) async {
    var isnotduplicated =  await myRepository.getJWT(passwd);
    if (isnotduplicated== "2") return false;
    else return true;
  }
}
