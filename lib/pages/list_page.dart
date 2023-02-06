import 'package:add_list_project/Provider/provider_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Listpage extends StatelessWidget {
  late ProviderPage providerPage;

  @override
  Widget build(BuildContext context) {
    providerPage = context.read<ProviderPage>();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Consumer<ProviderPage>(
              builder: (context, value, Widget? child) => ListView.builder(
                  itemCount: value.taskList.length,
                  itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20)),
                      height: 60,
                      margin: EdgeInsets.all(20),
                      child: Center(
                          child: Text(
                        value.taskList[index].details,
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      )))),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          providerPage.addTaskList();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
