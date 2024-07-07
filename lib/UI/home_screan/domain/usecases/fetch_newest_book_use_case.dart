
import 'package:dartz/dartz.dart';
import 'package:mybook/UI/home_screan/domain/repo/home_repo.dart';

import '../../../../Core/Error/failure.dart';
import '../../../../Core/UseCases/use_case.dart';
import '../entities/book_entity.dart';

class fetchNewestBookUseCase extends UseCase<List<BookEntity>, void> {
  final HomeRepo homerepo;

  fetchNewestBookUseCase({required this.homerepo});
  
  @override
  Future<Either<Failure, List<BookEntity>>> call([void param]) async {
    return await homerepo.fetchNewestBooks();
  }

 

}

