import 'package:redux/redux.dart';

class AppState {
  String token;

  AppState({this.token});
}

AppState appReducer (state, action) {
  return AppState(
    // token: UpdateToken(action)
  );
}

final UpdateToken = combineReducers<String>([
  TypedReducer<String, TokenAction>(_refreshToken)
]);


// action 方法
String _refreshToken (String token, action) {
  token = action.token;
  return token;
}

// 定义一个action类
class TokenAction {
  final token;
  TokenAction(this.token);
}