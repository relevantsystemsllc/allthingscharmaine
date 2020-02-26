import 'package:get_it/get_it.dart';

import 'core/services/API.dart';
import 'core/viewmodels/shopVM.dart';
import 'core/viewmodels/socialVM.dart';
import 'core/viewmodels/loginviewmodel.dart';
import 'core/viewmodels/user_creditcard_viewmodel.dart';
import 'core/viewmodels/userviewmodel.dart';

GetIt locator = GetIt.instance;
setupLocator() {
  locator.registerLazySingleton(() => UserViewModel());
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => LoginViewmodel());
  locator.registerLazySingleton(() => UserCreditCardViewmodel());
  locator.registerLazySingleton(()=> ShopVM());
  locator.registerLazySingleton(()=> SocialVM());
}
