// import 'package:adhara_socket_io/adhara_socket_io.dart';

// SocketIO socket;

// class MsgSocket {
//   static link () async {
//     socket = await SocketIOManager().createInstance('http://192.168.1.2:7000/');
//     print('正在链接');
//     socket.onConnect((data) {
//       // 链接成功
//     });
    
//     // 监听
//     socket.on("news", (data){   //sample event
//       print("news");
//       print(data);
//     });
//   }

//   static sendMsg (msg) {
//     socket.emit("message", ["Hello world!"]);
//   } 
// }
