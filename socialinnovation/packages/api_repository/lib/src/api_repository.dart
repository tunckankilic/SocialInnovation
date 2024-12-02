/// {@template api_repository}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class ApiRepository {
  /// {@macro api_repository}
  const ApiRepository();

  //Fetches Todos
  List<String> fetchTodos() => [
        "Make Homework",
        "Go To Shop",
        "Clean Dishes",
      ];
}
