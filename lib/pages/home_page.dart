import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/weather_cubit.dart';
import 'package:weather_app/cubits/weather_cubit/weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/views/defualt_view.dart';
import 'package:weather_app/pages/search_page.dart';
import 'package:weather_app/views/failure_view.dart';
import 'package:weather_app/views/success_view.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void updateUi() {
    setState(() {});
  }

  WeatherModel? weatherData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SearchPage(
                );
              }));
            },
            icon: const Icon(Icons.search),
          ),
        ],
        title: const Text('Weather App'),
      ),
       body:BlocBuilder<WeatherCubit,WeatherState>(
        builder: (context,State){
          if(State is WeatherLoading) {
            return const Center(child: CircularProgressIndicator(),);
          }
          if(State is WeatherSuccess) {
          weatherData= BlocProvider.of<WeatherCubit>(context).weatherModel;
            return SuccessBody(weatherData:weatherData);
          }
            if(State is WeatherFailure) {
            return const FailureView();
          }
          else{
            return const DefualtView();
          }
        }
        ),
    );
  }
}



