import 'package:clean_architecture/cores/error/failure.dart';
import 'package:clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';

import '../repositories/number_trivia_repository.dart';
import 'package:meta/meta.dart';
class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> call({
    @required int number,
  }) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
