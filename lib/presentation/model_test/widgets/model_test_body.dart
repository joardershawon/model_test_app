import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:model_test/application/model_test_page/modeltestpage_bloc.dart';

import 'package:model_test/presentation/design/size.dart';
import 'package:model_test/presentation/model_test/widgets/model_test_card.dart';

class ModelTestBody extends StatelessWidget {
  const ModelTestBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ModeltestpageBloc, ModeltestpageState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(
            child: Text('Stuck in initial'),
          ),
          loading: (_) => Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) => SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: getPercentSize(80, true, context),
                    child: ListView.builder(
                      itemCount: state.modelTest.length,
                      itemBuilder: (context, index) {
                        return ModelTestCard(
                          title: state.modelTest[index].modelTitle!.value,
                          description: state
                              .modelTest[index].modelShortDescription!.value,
                          image: state.modelTest[index].modelCoverImage!.value,
                          upcoming: state.overOrWhat[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
