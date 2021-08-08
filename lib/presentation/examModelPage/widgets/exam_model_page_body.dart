import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:model_test/application/model_test_page/modeltestpage_bloc.dart';
import 'package:model_test/presentation/design/size.dart';
import 'package:model_test/presentation/examModelPage/widgets/model_list_widget.dart';
import 'package:model_test/presentation/router/router.gr.dart';

class ExamModelPageBody extends StatelessWidget {
  const ExamModelPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ModeltestpageBloc, ModeltestpageState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loading: (_) => Center(child: CircularProgressIndicator()),
            loadSuccess: (state) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: getPercentSize(90, true, context),
                      child: ListView.builder(
                        itemCount: state.modelTest.length,
                        itemBuilder: (context, index) {
                          return ModelListWidget(
                            name: '${state.modelTest[index].modelTitle}',
                            onTap: () {
                              AutoRouter.of(context).push(
                                ExamPageRoute(
                                  modelId:
                                      state.modelTest[index].modelId!.value,
                                  duration: state
                                      .modelTest[index].modelExamTime!.value,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
              );
            });
      },
    );
  }
}
