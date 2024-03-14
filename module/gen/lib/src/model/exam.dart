import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'exam.g.dart';

@JsonSerializable()

///
final class Exam with EquatableMixin {
  ///
  Exam({
    this.title,
    this.questions,
  });

  ///
  factory Exam.fromJson(Map<String, dynamic> json) => _$ExamFromJson(json);
  @JsonKey(name: 'title')

  ///
  final String? title;

  ///
  @JsonKey(name: 'questions')
  final List<Questions>? questions;

  ///
  Map<String, dynamic> toJson() => _$ExamToJson(this);

  @override
  List<Object?> get props => [title, questions];

  ///
  Exam copyWith({
    String? title,
    List<Questions>? questions,
  }) {
    return Exam(
      title: title ?? this.title,
      questions: questions ?? this.questions,
    );
  }
}

@JsonSerializable()

///
final class Questions with EquatableMixin {
  ///
  Questions({
    this.id,
    this.text,
    this.options,
    this.correctOption,
  });

  ///
  factory Questions.fromJson(Map<String, dynamic> json) =>
      _$QuestionsFromJson(json);

  @JsonKey(name: 'id')

  ///
  final int? id;
  @JsonKey(name: 'text')

  ///
  final String? text;
  @JsonKey(name: 'options')

  ///
  final List<String>? options;
  @JsonKey(name: 'correct_option')

  ///
  final int? correctOption;

  ///
  Map<String, dynamic> toJson() => _$QuestionsToJson(this);

  @override
  List<Object?> get props => [id, text, options, correctOption];

  ///
  Questions copyWith({
    int? id,
    String? text,
    List<String>? options,
    int? correctOption,
  }) {
    return Questions(
      id: id ?? this.id,
      text: text ?? this.text,
      options: options ?? this.options,
      correctOption: correctOption ?? this.correctOption,
    );
  }
}
