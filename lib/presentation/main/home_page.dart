
import 'dart:io';

import 'package:cat_trivia/presentation/history/bloc/history_bloc.dart';
import 'package:cat_trivia/presentation/main/bloc/home_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../history/history_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _bloc = HomeBloc();

  @override
  void initState() {
    _bloc.add(GetAllFactsEvent());
    super.initState();
  }
  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state){

        },
        builder: (context, state){
          if(state is GetFactsLoadingState){
            return const Scaffold(
              backgroundColor: Colors.grey,
              body: SafeArea(
                child: Center(
                  child: CupertinoActivityIndicator(),
                ),
              ),
            );
          }else if (state is GetFactsSuccessState) {
            DateTime createdAt = DateTime.parse(state.facts.createdAt);
            String formattedDate = DateFormat.yMd().add_Hms().format(createdAt);
            return Scaffold(
              appBar: AppBar(title: Text('Cats'), actions: <Widget>[
                IconButton(onPressed: (){
                  Navigator.pushNamed(context, 'history');
                }, icon: const Icon(Icons.history))
              ],),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.file(File(state.facts.image), height: 200, width: 200,),
                  const SizedBox(height: 20,),

                  Text(state.facts.text.toString()),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                        const Spacer(),
                      Text(formattedDate),
                      const SizedBox(width: 20,)
                    ],
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){_bloc.add(GenerateNewFacts());}, child: Text('Generate'))
                ],
              )
            );
          } else {
            return  const Scaffold();
          }
        },
      ),
    );
  }
}
