import 'package:news_api/model/article.dart';

abstract class AppState{}
class InitialState extends AppState{}
class LoadedState extends AppState{
  final List<Article> x;
  LoadedState({required this.x});
}
class ErrorState extends AppState{
  final String errorMassage;

  ErrorState({required this.errorMassage});
}
class LoadingState extends AppState{}