import 'package:crudmodalfersus/Presentation/domain/dto/MessageDto.dart';
import 'package:crudmodalfersus/Presentation/infraestructure/models/yes_no_model.dart';
import 'package:dio/dio.dart';

class GetYesNoAnwser {
  
  final _dio=Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final yesNoModel= YesNoModel.fromJsonMap(response.data);

    return Message(
      text: yesNoModel.answer
     ,fromWho: FromWho.hers
     );
  }
}