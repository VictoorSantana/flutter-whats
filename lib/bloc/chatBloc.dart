import 'package:layAprendendo/services/chat_service.dart';
import 'package:rxdart/rxdart.dart';

class ChatBloc {
  final _service = ChatService();

  final _controller = BehaviorSubject();
  Stream get output => _controller.stream;
  Sink get input => _controller.sink;


  getPrintChat() async {
    await _service.getPrint().then(input.add);
  }

  void dispose(){
    _controller.close();
  }

}