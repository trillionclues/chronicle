import 'package:json_annotation/json_annotation.dart';
import 'package:chronicle/features/game/domain/model/participant_model.dart';

part 'story_fragment_model.g.dart';

@JsonSerializable()
class StoryFragmentModel {
  final String text;
  final ParticipantModel author;
  final int votes;

  const StoryFragmentModel({
    required this.text,
    required this.author,
    required this.votes,
  });

  factory StoryFragmentModel.fromJson(Map<String, dynamic> json) =>
      _$StoryFragmentModelFromJson(json);

  Map<String, dynamic> toJson() => _$StoryFragmentModelToJson(this);
}