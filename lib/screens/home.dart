import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/screens/news_list_views.dart';
import 'package:news/services/News_Service.dart';
import 'package:news/widgets/categoriesListView.dart';
import 'package:news/widgets/category_card.dart';
import 'package:news/widgets/news_list_view_builder.dart';
import 'package:news/widgets/news_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              'Today',
              style: TextStyle(
                color: Color.fromARGB(255, 233, 29, 15),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: categoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListViewBuilder(
              category: 'general',
            ),
          ],
        ),
        /*child: 
        Column(
          children: [
            categoriesListView(), 
            SizedBox(      
              height: 32,  
            ),
            Expanded(
              child: NewsListViews(),
            ),
          ],
        ),*/
      ),
    );
  }
}
