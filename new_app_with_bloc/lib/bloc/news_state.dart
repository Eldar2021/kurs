part of 'news_bloc.dart';

abstract class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object> get props => [];
}

class NewsLoading extends NewsState {}

class NewsSuccess extends NewsState {
  const NewsSuccess(this.news);
  final List<News> news;
}

class NewsError extends NewsState {
  const NewsError(this.text);
  final String text;
}
