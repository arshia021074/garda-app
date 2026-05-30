import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
  late IO.Socket socket;

  void connect() {
    socket = IO.io(
      'http://YOUR_SERVER:4000',
      IO.OptionBuilder().setTransports(['websocket']).build(),
    );

    socket.connect();
  }
}
