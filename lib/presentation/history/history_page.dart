import 'package:cat_trivia/data/data_sources/local/hive_helper.dart';
import 'package:cat_trivia/data/models/CatModelCommon.dart';
import 'package:cat_trivia/presentation/history/bloc/history_bloc.dart';
import 'package:cat_trivia/utils/item_history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => HistoryBloc()..add(GetAllFactsHistoryEvent()),
  child: Scaffold(
        appBar: AppBar(
          title: const Text("History"),
        ),
        body: BlocBuilder<HistoryBloc,HistoryState>(builder: (context, state){
          if(state is GetAllHistoryLoadingState){
            return const Scaffold(
              body: SafeArea(
                child: Center(
                  child: CupertinoActivityIndicator(),
                ),
              ),
            );
          } else if (state is GetAllHistorySuccessState){
            return ListView.builder(itemCount: HiveHelper.showAllFacts().length, itemBuilder: (context, index){
              return itemHistory(CatModelCommon(HiveHelper.showAllFacts()[index].text, HiveHelper.showAllFacts()[index].createdAt, HiveHelper.showAllFacts()[index].image));
            });
          } else {
            return const Scaffold();
          }
        }
                )),
);
  }
}
