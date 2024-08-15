import 'package:flutter/material.dart';
import 'package:todolist/extensions/context.dart';
import 'package:todolist/pages/main/project/bloc/project_bloc.dart';
import 'package:todolist/pages/main/project/project_view.dart';
import 'package:todolist/widgets/list_view_seperated.dart';
import 'package:todolist/widgets/loading_widget.dart';
import 'package:todolist/widgets/scaffold.dart';

class AllProjects extends StatelessWidget {
  const AllProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: Text(context.appLocalizations.projects),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Center(
              child: ProjectBlocSelector(
                  selector: (state) => state.allProjectApi.isApiInProgress,
                  builder: (isInProgress) {
                    return LoadingWidget(
                        label: ProjectBlocSelector.allProjects(builder: (data) {
                          if (data.isEmpty) {
                            return Container();
                          }
                          return ListViewSeperatedWidget(
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    ProjectBloc.of(context).controller!.clear();
                                    ProjectView.push(
                                        context, data[index].id!, index);
                                  },
                                  child: Text(
                                    data[index].name!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(color: Colors.black),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                );
                              },
                              list: data);
                        }),
                        isLoading: isInProgress);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
