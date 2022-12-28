import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/news_model.dart';
import '../service/news_service.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this.service) : super(NewsLoading()) {
    on<NewsEvent>((event, emit) {});
    on<NewsByCountyCodeEvent>(_getNewsByCountry);
  }

  final NewsService service;

  Future<void> _getNewsByCountry(NewsByCountyCodeEvent event, Emitter<NewsState> emit) async {
    if (state is! NewsLoading) emit(NewsLoading());
    final news = await service.getNewsByCountry(event.countryCode);
    if (news != null) {
      emit(NewsSuccess(news));
    } else {
      emit(const NewsError('Bizde bir kata boldu'));
    }
  }
}
