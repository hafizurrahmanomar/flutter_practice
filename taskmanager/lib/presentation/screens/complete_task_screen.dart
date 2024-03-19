import 'package:flutter/material.dart';
import '../../data/models/task_list_wrapper.dart';
import '../../data/services/network_caller.dart';
import '../utility/urls.dart';
import '../wedget/app_background.dart';
import '../wedget/empty_list_widget.dart';
import '../wedget/profile_app_bar.dart';
import '../wedget/snack_bar_message.dart';
import '../wedget/task_card.dart';

class CompleteTaskScreen extends StatefulWidget {
  const CompleteTaskScreen({super.key});

  @override
  State<CompleteTaskScreen> createState() => _CompleteTaskScreenState();
}

class _CompleteTaskScreenState extends State<CompleteTaskScreen> {
  bool _getAllCompletedTaskListInProgress = false;
  TaskListWrapper _completedTaskListWrapper = TaskListWrapper();

  @override
  void initState() {
    super.initState();
    _getAllCompletedTaskList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar,
      body: BackgroundWidget(
        child: Visibility(
          visible: _getAllCompletedTaskListInProgress == false,
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
          // TODO: Make it workable
          child: RefreshIndicator(
            onRefresh: () async {
              _getAllCompletedTaskList();
            },
            child: Visibility(
              visible: _completedTaskListWrapper.taskList?.isNotEmpty ?? false,
              replacement: const EmptyListWidget(),
              child: ListView.builder(
                itemCount: _completedTaskListWrapper.taskList?.length ?? 0,
                itemBuilder: (context, index) {
                  return TaskCard(
                    taskItem: _completedTaskListWrapper.taskList![index],
                    refreshList: () {
                      _getAllCompletedTaskList();
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _getAllCompletedTaskList() async {
    _getAllCompletedTaskListInProgress = true;
    setState(() {});
    final response = await NetworkCaller.getRequest(Urls.completedTaskList);
    if (response.isSuccess) {
      _completedTaskListWrapper =
          TaskListWrapper.fromJson(response.responseBody);
      _getAllCompletedTaskListInProgress = false;
      setState(() {});
    } else {
      _getAllCompletedTaskListInProgress = false;
      setState(() {});
      if (mounted) {
        showSnackBarMessage(context,
            response.errorMessage ?? 'Get completed task list has been failed');
      }
    }
  }
}
