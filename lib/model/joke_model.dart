import 'dart:convert';

JokeModel jokeModelFromJson(String str) => JokeModel.fromJson(json.decode(str));

class JokeModel {
    String? type;
    String? setup;
    String? punchline;
    int? id;

    JokeModel({
        this.type,
        this.setup,
        this.punchline,
        this.id,
    });

    factory JokeModel.fromJson(Map<String, dynamic> json) => JokeModel(
        type: json["type"],
        setup: json["setup"],
        punchline: json["punchline"],
        id: json["id"],
    );
}
