import 'package:fpdart/fpdart.dart';

import '../../../../home/presentation/barrel.dart';


class InsertAllSectorsLocalUsecase
    implements Usecase<List<int>, List<GetSectorsModel>> {
  final CustomerAbstractRepository customerRepository;
  InsertAllSectorsLocalUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, List<int>>> call(
    List<GetSectorsModel> sectors,
  ) async {
    return await customerRepository.insertLocalSectors(sectors);
  }
}
