import 'package:auto_db/data/datasources/local/shared_preferences_data.dart';
import 'package:auto_db/data/datasources/local/shared_preferences_data_implementation.dart';
import 'package:auto_db/data/datasources/remote/main_dio_client.dart';
import 'package:auto_db/data/datasources/remote/postcode_nl_dio_client.dart';
import 'package:auto_db/data/repositories/add_vehicle_repository_implementation.dart';
import 'package:auto_db/data/repositories/authentication_repository_implementation.dart';
import 'package:auto_db/data/repositories/dropdown_data_repository_implementation.dart';
import 'package:auto_db/data/repositories/inventory_repository_implementation.dart';
import 'package:auto_db/data/repositories/miscellaneous.repository_implementation.dart';
import 'package:auto_db/data/repositories/postcode_nl_repository_implementation.dart';
import 'package:auto_db/data/repositories/public_user_repository_implementation.dart';
import 'package:auto_db/data/repositories/searches_repository_implementation.dart';
import 'package:auto_db/data/repositories/shared_preferences_repository_implementation.dart';
import 'package:auto_db/domain/repositories/add_vehicle_repository.dart';
import 'package:auto_db/domain/repositories/authentication_repository.dart';
import 'package:auto_db/domain/repositories/dropdown_data_repository.dart';
import 'package:auto_db/domain/repositories/inventory_repository.dart';
import 'package:auto_db/domain/repositories/postcode_nl_repository.dart';
import 'package:auto_db/domain/repositories/public_user_repository.dart';
import 'package:auto_db/domain/repositories/searches_repository.dart';
import 'package:auto_db/domain/repositories/shared_preferences_repository.dart';
import 'package:get_it/get_it.dart';

import 'data/repositories/leads_repository_implementation.dart';
import 'domain/repositories/leads_repository.dart';
import 'domain/repositories/miscellaneous_repository.dart';

class AppSetup {
  static GetIt createInstaceAndRegisterDependencies(){
    final getIt = GetIt.instance;
    _registerDependencies(getIt);
    return getIt;
  }

  static _registerDependencies(GetIt getIt){
    getIt.registerSingleton<MainDioClient>(MainDioClient.create());
    getIt.registerSingleton<PostcodeNlDioClient>(PostcodeNlDioClient.create());
    
    //repository registration
    getIt.registerLazySingleton<PostcodeNlRepository>(() => PostcodeNlRepositoryImplementation());
    getIt.registerLazySingleton<AuthenticationRepository>(() => AuthenticationRepositoryImplementation());
    getIt.registerLazySingleton<SharedPreferencesRepository>(() => SharedPreferencesRepositoryImplementation());
    getIt.registerLazySingleton<DropdownDataRepository>(() => DropdownDataRepositoryImplementation());
    getIt.registerLazySingleton<AddVehicleRepository>(() => AddVehicleRepositoryImplementation());
    getIt.registerLazySingleton<InventoryRepository>(() => InventoryRepositoryImplementation());
    getIt.registerLazySingleton<MiscellaneousRepository>(() => MiscellaneousRepositoryImplementation());
    getIt.registerLazySingleton<SearchesRepository>(() => SearchesRepositoryImplementation());
    getIt.registerLazySingleton<LeadsRepository>(() => LeadsRepositoryImplementation());
    getIt.registerLazySingleton<PublicUserRepository>(() => PublicUserRepositoryImplementation());

    //local data registration
    getIt.registerLazySingleton<SharedPreferencesData>(() => SharedPreferencesDataImplementation());
  }
}