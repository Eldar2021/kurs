import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/news_bloc.dart';
import '../components/error_widget.dart';
import '../components/loading_widget.dart';
import '../models/news_model.dart';
import '../service/news_service.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsBloc(newsService)..add(const NewsByCountyCodeEvent()),
      child: const NewsView(),
    );
  }
}

class NewsView extends StatelessWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsView'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (v) => context.read<NewsBloc>().add(NewsByCountyCodeEvent(v)),
            itemBuilder: (BuildContext context) {
              return <String>['us', 'kr', 'tr', 'ru', 'fr', 'ar', 'ch']
                  .map((e) => PopupMenuItem<String>(value: e, child: Text(e)))
                  .toList();
            },
          ),
        ],
      ),
      body: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          if (state is NewsLoading) {
            return const LoadingWidget();
          } else if (state is NewsSuccess) {
            return NewsSuccessWidget(state.news);
          } else if (state is NewsError) {
            return ErrorWedget(state.text);
          } else {
            return const ErrorWedget('belgisiz state');
          }
        },
      ),
    );
  }
}

class NewsSuccessWidget extends StatelessWidget {
  const NewsSuccessWidget(this.news, {super.key});

  final List<News> news;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: news.length,
      itemBuilder: (BuildContext context, int index) {
        final newsItem = news[index];
        return Card(
          child: ListTile(
            title: Text(newsItem.title),
          ),
        );
      },
    );
  }
}
