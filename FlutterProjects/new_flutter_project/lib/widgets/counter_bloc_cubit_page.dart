import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_project/cubit/counter_cubit.dart';
import 'package:new_flutter_project/cubit/counter_state.dart';
import 'package:new_flutter_project/widgets/app_bar_custom.dart';

class CounterBlocCubitPage extends StatelessWidget {
  const CounterBlocCubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        title: "Counter From Cubit/Bloc",
        bgColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //BlocBuilder<CounterCubit, int>(
            BlocBuilder<CounterCubit, CounterState>(
              //Just this part will re-renderd
              builder: (context, state) => Text(
                //state is object from CounterState
                "Counter is ${state.count}",
                style: TextStyle(fontSize: 32, color: Colors.blue),
              ),
            ),

            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => context.read<CounterCubit>().decrement(),
                  icon: const Icon(Icons.remove),
                ),

                IconButton(
                  onPressed: () => context.read<CounterCubit>().reset(),
                  icon: const Icon(Icons.refresh),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {context.read<CounterCubit>().increment()},
        child: const Icon(Icons.add),
      ),
    );
  }
}
