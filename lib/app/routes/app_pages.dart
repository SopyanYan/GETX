import 'package:get/get.dart';

import '../middlewares/auth_middleware.dart';
import '../modules/biodata/bindings/biodata_binding.dart';
import '../modules/biodata/views/biodata_view.dart';
import '../modules/biodata/views/output_view.dart';
import '../modules/bottom_menu/bindings/bottom_menu_binding.dart';
import '../modules/bottom_menu/views/bottom_menu_view.dart';
import '../modules/counter/bindings/counter_binding.dart';
import '../modules/counter/views/counter_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
//kategori
import '../modules/kategori/bindings/kategori_binding.dart';
import '../modules/kategori/views/create_kategori_view.dart';
import '../modules/kategori/views/edit_kategori_view.dart';
import '../modules/kategori/views/kategori_view.dart';
import '../modules/kategori/views/show_kategori_view.dart';
//login
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
//profil
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
//register
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
//tag
import '../modules/tag/bindings/tag_binding.dart';
import '../modules/tag/views/create_tag_view.dart';
import '../modules/tag/views/edit_tag_view.dart';
import '../modules/tag/views/show_tag_view.dart';
import '../modules/tag/views/tag_view.dart';
//user
import '../modules/user/bindings/user_binding.dart';
import '../modules/user/views/create_user_view.dart';
import '../modules/user/views/edit_user_view.dart';
import '../modules/user/views/show_user_view.dart';
import '../modules/user/views/user_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOM_MENU;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => const HomeView(),
        binding: HomeBinding(),
        middlewares: [AuthMiddleware()]),
    GetPage(
        name: _Paths.COUNTER,
        page: () => const CounterView(),
        binding: CounterBinding(),
        middlewares: [AuthMiddleware()]),
    GetPage(
        name: _Paths.BIODATA,
        page: () => const BiodataView(),
        binding: BiodataBinding(),
        middlewares: [AuthMiddleware()]),
    GetPage(
      name: _Paths.OUTPUT,
      page: () => OutputView(),
      // binding: BiodataBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_MENU,
      page: () => BottomMenuView(),
      binding: BottomMenuBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.KATEGORI,
      page: () => KategoriView(),
      binding: KategoriBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.CREATE_KATEGORI,
      page: () => CreateKategoriView(),
      binding: KategoriBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.EDIT_KATEGORI,
      page: () => EditKategoriView(),
      binding: KategoriBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.SHOW_KATEGORI,
      page: () => ShowKategoriView(),
      binding: KategoriBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.TAG,
      page: () => TagView(),
      binding: TagBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_TAG,
      page: () => CreateTagView(),
      binding: TagBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.EDIT_TAG,
      page: () => EditTagView(),
      binding: TagBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.SHOW_TAG,
      page: () =>  ShowTagView(),
      binding: TagBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.USER,
      page: () => UserView(),
      binding: UserBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_USER,
      page: () => CreateUserView(),
      binding: TagBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.EDIT_USER,
      page: () => EditUserView(),
      binding: TagBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: _Paths.SHOW_USER,
      page: () =>  ShowUserView(),
      binding: TagBinding(),
      middlewares: [AuthMiddleware()],
    ),
  ];
}
