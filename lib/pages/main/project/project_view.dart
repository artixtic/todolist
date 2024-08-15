import 'package:appflowy_board/appflowy_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:todolist/core/colors.dart';
import 'package:todolist/extensions/context.dart';
import 'package:todolist/pages/main/project/bloc/project_bloc.dart';
import 'package:todolist/utils/navigator.dart';
import 'package:todolist/widgets/list_view_seperated.dart';
import 'package:todolist/widgets/loading_text.dart';
import 'package:todolist/widgets/loading_widget.dart';
import 'package:todolist/widgets/scaffold.dart';
import 'package:todolist/widgets/text_fields/form.dart';
import 'package:todolist/widgets/text_fields/name_text_form_field.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class ProjectView extends StatelessWidget {
  static const ROUTE_NAME = 'project/projectView';

  ProjectView._();

  static Future<void> push(final BuildContext context, String id, index) {
    final bloc = ProjectBloc.of(context);
    bloc.getAllDataOfProject(id, index);
    return pushMaterialPageRoute(
      context,
      name: ROUTE_NAME,
      builder: (final _) => ProjectView._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = ProjectBloc.of(context);

    final config = AppFlowyBoardConfig(
      groupBackgroundColor: HexColor.fromHex('#F7F8FC'),
      stretchGroupHeight: false,
    );
    return AppScaffold(
        appBar: AppBar(
          title: Text(bloc.state.title!),
        ),
        body: ProjectBlocSelector(
            selector: (state) => state.projectDataApi.isApiInProgress,
            builder: (data) {
              return Center(
                child: LoadingWidget(
                  isLoading: data,
                  label: ProjectBlocSelector.projectDataById(builder: (data) {
                    if (data!.isEmpty) {
                      return Container();
                    }
                    return AppFlowyBoard(
                        controller: bloc.controller!,
                        cardBuilder: (context, group, groupItem) {
                          return AppFlowyGroupCard(
                            key: ValueKey(groupItem.id),
                            child: _buildCard(groupItem, context),
                          );
                        },
                        boardScrollController: bloc.state.boardController,
                        footerBuilder: (context, columnData) {
                          return AppFlowyGroupFooter(
                            icon: const Icon(Icons.add, size: 20),
                            title: const Text('New'),
                            height: 50,
                            margin: config.groupBodyPadding,
                            onAddButtonClick: () {
                              bloc.state.boardController
                                  .scrollToBottom(columnData.id);
                            },
                          );
                        },
                        headerBuilder: (context, columnData) {
                          return AppFlowyGroupHeader(
                            icon: const Icon(Icons.lightbulb_circle),
                            title: SizedBox(
                                width: 250,
                                child: Text(columnData.headerData.groupName)
                                // TextField(
                                //   controller: TextEditingController()
                                //     ..text = columnData.headerData.groupName,
                                //   onSubmitted: (val) {
                                //     bloc.controller!
                                //         .getGroupController(columnData.headerData.groupId)!
                                //         .updateGroupName(val);
                                //   },
                                // ),
                                ),
                            // addIcon: const Icon(Icons.add, size: 20),
                            // moreIcon: const Icon(Icons.more_horiz, size: 20),
                            height: 100,
                            margin: config.groupBodyPadding,
                          );
                        },
                        groupConstraints:
                            const BoxConstraints.tightFor(width: 440),
                        config: config);
                  }),
                ),
              );
            }));
  }

  Widget _buildCard(AppFlowyGroupItem item, context) {
    if (item is TextItem) {
      return GestureDetector(
        onTap: () {
          ProjectBloc.of(context).callAllComment(item.id);
          showBottomSheet(
              context: context,
              builder: (context) {
                return Column(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: ListView(
                        children: [
                          Text("All Comments"),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: ProjectBlocSelector(
                                selector: (state) =>
                                    state.allCommentApi.isApiInProgress,
                                builder: (isInProgress) {
                                  return LoadingWidget(
                                      label: ProjectBlocSelector.comments(
                                          builder: (data) {
                                        if (data!.isEmpty) {
                                          return Container();
                                        }
                                        return ListViewSeperatedWidget(
                                            itemBuilder: (context, index) {
                                              return GestureDetector(
                                                onTap: () {
                                                  ProjectView.push(context,
                                                      data[index].id!, index);
                                                },
                                                child: Text(
                                                  data[index]['content'],
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge!
                                                      .copyWith(
                                                          color: Colors.black),
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                    )),
                    Expanded(
                      child: ProjectBlocSelector(
                          selector: (final state) =>
                              state.addCommentApi.isApiInProgress,
                          builder: (final disableForm) => AppForm(
                              disable: disableForm,
                              child: Builder(
                                  builder: (final context) => Center(
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Add Comment"),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              NameTextFormField(
                                                hintText: "Comment",
                                                textInputAction:
                                                    TextInputAction.next,
                                                onChanged:
                                                    ProjectBloc.of(context)
                                                        .updateComment,
                                                validator: Validators.compose([
                                                  Validators.required(context
                                                      .appLocalizations
                                                      .listing_errNameInvalid),
                                                ]),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              ProjectBlocSelector(
                                                selector: (final state) => state
                                                    .addCommentApi
                                                    .isApiInProgress,
                                                builder:
                                                    (final isProjectApiInProgress) =>
                                                        ElevatedButtonTheme(
                                                  data: ElevatedButtonThemeData(
                                                    style: Theme.of(context)
                                                        .elevatedButtonTheme
                                                        .style
                                                        ?.copyWith(
                                                          minimumSize:
                                                              const MaterialStatePropertyAll(
                                                            Size(200, 45),
                                                          ),
                                                        ),
                                                  ),
                                                  child: GestureDetector(
                                                    onTap:
                                                        isProjectApiInProgress
                                                            ? null
                                                            : () {
                                                                if (!Form.of(
                                                                        context)
                                                                    .validate()) {
                                                                  return;
                                                                }
                                                                ProjectBloc.of(
                                                                        context)
                                                                    .callAddComment(
                                                                        item);
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                    child: Container(
                                                      height: 10.h,
                                                      width: 20.h,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.h),
                                                        gradient: LinearGradient(
                                                            begin:
                                                                const Alignment(
                                                                    -0.24, 0),
                                                            end:
                                                                const Alignment(
                                                                    1.27, 1),
                                                            colors: [
                                                              LightCodeColors
                                                                  .purpleA400,
                                                              const Color(
                                                                  0XFF0077C0)
                                                            ]),
                                                      ),
                                                      child: Center(
                                                        child: LoadingText(
                                                          isLoading:
                                                              isProjectApiInProgress,
                                                          label: context
                                                              .appLocalizations
                                                              .done,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          )))))),
                    ),
                  ],
                );
              });
        },
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Text(item.s),
          ),
        ),
      );
    }

    if (item is RichTextItem) {
      return RichTextCard(item: item);
    }

    throw UnimplementedError();
  }
}

class RichTextCard extends StatefulWidget {
  final RichTextItem item;
  const RichTextCard({
    required this.item,
    Key? key,
  }) : super(key: key);

  @override
  State<RichTextCard> createState() => _RichTextCardState();
}

class _RichTextCardState extends State<RichTextCard> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.item.title,
              style: const TextStyle(fontSize: 14),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 10),
            Text(
              widget.item.subtitle,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}

class TextItem extends AppFlowyGroupItem {
  final String s;
  final String id;
  TextItem(this.s, this.id);
}

class RichTextItem extends AppFlowyGroupItem {
  final String title;
  final String subtitle;

  RichTextItem({required this.title, required this.subtitle});

  @override
  String get id => title;
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
