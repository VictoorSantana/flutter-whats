import 'package:dio/dio.dart';
import 'package:layAprendendo/utils/servicePath.dart';

class ChatService {
  final dio = Dio();

  getPrint() async {
    print(ServicePath.BASE + ServicePath.CHAT_PRINT);
    Response response = await dio.get(ServicePath.BASE + ServicePath.CHAT_PRINT);
    return response.data;
  }
  
}