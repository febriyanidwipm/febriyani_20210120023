// Buat Class untuk RouteGenerator
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => GeneratorRoute());
  }
}