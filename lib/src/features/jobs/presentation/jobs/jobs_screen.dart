import 'package:ea_kazi/src/features/jobs/presentation/jobs/bloc/jobs_bloc.dart';
import 'package:ea_kazi/src/features/jobs/presentation/widgets/job_card.dart/job_card.dart';
import 'package:ea_kazi/src/utils/injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<JobsBloc>()..add(const JobsEvent.started()),
      child: BlocConsumer<JobsBloc, JobsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(AppBar().preferredSize.height),
              child: const EaKaziAppBar(
                title: AppStrings.jobs,
              ),
            ),
            body: state.maybeWhen(
              loadingState: () => const Center(
                child: SizedBox(
                  height: Sizes.p24,
                  width: Sizes.p24,
                  child: CircularProgressIndicator(),
                ),
              ),
              orElse: () => Container(),
              loadedState: (jobs) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: Sizes.p20,
                      horizontal: Sizes.p16,
                    ),
                    child: Column(
                      children: [
                        const SearchField(),
                        gapH2,
                        ListView.separated(
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
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
