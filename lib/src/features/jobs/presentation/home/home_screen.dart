import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/features/jobs&courses/presentation/common/categories.dart';
import 'package:ea_kazi/src/features/jobs/presentation/home/bloc/home_bloc.dart';
import 'package:ea_kazi/src/features/jobs/presentation/widgets/job_card.dart/job_card.dart';
import 'package:ea_kazi/src/utils/injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_components/get_started_options.dart';
import 'home_components/recommendation_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()..add(const HomeEvent.started()),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        buildWhen: (oldState, newState) {
          return newState.maybeWhen(
            loadedState: (jobs, skills) => true,
            loading: () => true,
            orElse: () => false,
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(
              child: SizedBox(
                height: Sizes.p24,
                width: Sizes.p24,
                child: CircularProgressIndicator(),
              ),
            ),
            loadedState: (jobs, skills) {
              return Scaffold(
                appBar: AppBar(
                  title: Row(
                    children: [
                      Text(
                        "Hi, Test",
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                ),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: Sizes.p20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.p16),
                          child: SearchField(),
                        ),
                        gapH2,
                        const GetStartedOptions(),
                        gapH2,
                        Categories(skills: skills),
                        const RecommendationWidget(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
                          child: ListView.separated(
                            shrinkWrap: true,
                            itemCount: jobs.length,
                            primary: false,
                            itemBuilder: (context, index) {
                              return JobCard(job: jobs[index]);
                            },
                            separatorBuilder: (context, index) {
                              return gapH4;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            orElse: () => Container(),
          );
        },
      ),
    );
  }
}
