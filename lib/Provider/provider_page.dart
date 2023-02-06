import 'package:add_list_project/Model/add_model.dart';
import 'package:flutter/cupertino.dart';

class ProviderPage extends ChangeNotifier {
  List<AddModel> taskList = [];

  addTaskList() {
    AddModel addModel =
        AddModel("title${taskList.length}", "Add list${taskList.length}");
    taskList.add(addModel);
    notifyListeners();
  }
}
