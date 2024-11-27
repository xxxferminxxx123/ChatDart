// To parse this JSON data, do
//
//     final yesNoModel = yesNoModelFromJson(jsonString);

import 'dart:convert';

import 'package:crudmodalfersus/Presentation/domain/dto/MessageDto.dart';

YesNoModel yesNoModelFromJson(String str) => YesNoModel.fromJsonMap(json.decode(str));

String yesNoModelToJson(YesNoModel data) => json.encode(data.toJson());

class YesNoModel {
    final String answer;
    final bool forced;
    final String image;

    YesNoModel({
        required this.answer,
        required this.forced,
        required this.image,
    });

    factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };
    Message toMessageEntity()=>Message(
      text: answer =='yes'? 'Si':'No'
      , fromWho: FromWho.hers);
}
