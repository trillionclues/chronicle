import 'package:chronicle/features/game/domain/model/game_phase_model.dart';
import 'package:chronicle/features/game/domain/model/participant_model.dart';
import 'package:chronicle/features/game/domain/model/story_fragment_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'game_model.g.dart';

@JsonSerializable()
class GameModel extends Equatable {
  final String id;
  final String gameCode;
  final String name;
  final bool isFinished;
  final GamePhase phase;
  final int currentRound;
  final int maxRounds;
  final int voteTime;
  final int roundTime;
  final int maxPlayers;
  final List<StoryFragmentModel>? history;
  final List<ParticipantModel>? participants;

  const GameModel({
    required this.id,
    required this.gameCode,
    required this.name,
    required this.isFinished,
    required this.phase,
    required this.currentRound,
    required this.maxRounds,
    required this.voteTime,
    required this.roundTime,
    required this.maxPlayers,
    required this.history,
    required this.participants,
  });

  factory GameModel.fromJson(Map<String, dynamic> json) =>
      _$GameModelFromJson(json);

  Map<String, dynamic> toJson() => _$GameModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        gameCode,
        name,
        isFinished,
        phase,
        currentRound,
        maxRounds,
        voteTime,
        roundTime,
        maxPlayers,
        history,
        participants,
      ];
}
