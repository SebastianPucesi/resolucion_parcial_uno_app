import 'package:go_router/go_router.dart';
import 'package:galeano_pucesi/pages/about_page.dart';
import 'package:galeano_pucesi/pages/dashboard_page.dart';
import 'package:galeano_pucesi/pages/home_page.dart';
import 'package:galeano_pucesi/pages/info_page.dart';
import 'package:galeano_pucesi/pages/login_page.dart';
import 'package:galeano_pucesi/pages/register_page.dart';

class AppRoutes {
  static String home = '/';
  static String login = '/login';
  static String register = '/register';
  static String info = '/info';
  static String about = '/about';
  static String dashoard = '/dashoard';
}

final routes = GoRouter(routes: [
  GoRoute(path: AppRoutes.home, builder: (context, state) => const HomePage()),
  GoRoute(
      path: AppRoutes.login, builder: (context, state) => const LoginPage()),
  GoRoute(
      path: AppRoutes.register,
      builder: (context, state) => const RegisterPage()),
  GoRoute(path: AppRoutes.info, builder: (context, state) => const InfoPage()),
  GoRoute(
      path: AppRoutes.about, builder: (context, state) => const AboutPage()),
  GoRoute(
      path: AppRoutes.dashoard,
      builder: (context, state) => const DashboardPage()),
]);
