part of 'news_bloc.dart';

abstract class NewsEvent extends Equatable {
  const NewsEvent();

  @override
  List<Object> get props => [];
}

class NewsByCountyCodeEvent extends NewsEvent {
  const NewsByCountyCodeEvent([this.countryCode = 'us']);

  final String countryCode;
}
