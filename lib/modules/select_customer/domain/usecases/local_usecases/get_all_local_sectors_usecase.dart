import 'package:fpdart/fpdart.dart';

import '../../../../home/presentation/barrel.dart';


class GetAllLocalSectorsUsecase
    implements Usecase<List<GetSectorsModel>, NoParams> {
  final CustomerAbstractRepository customerRepository;
  GetAllLocalSectorsUsecase({required this.customerRepository});
  @override
  Future<Either<AppException, List<GetSectorsModel>>> call(
    NoParams params,
  ) async {
    return await customerRepository.getAllLocalSectors();
  }
}
