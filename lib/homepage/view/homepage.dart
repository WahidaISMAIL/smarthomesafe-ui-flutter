import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard/dashboard.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';
import '../model/home_model.dart';
import '../widgets/add_objects.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                    onPressed: () {
                      Get.to(() => const Dashboard());
                    },
                    icon: const Icon(Icons.dashboard))
              ],
            ),
            drawer: Drawer(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 100),
                    const CircleAvatar(
                      maxRadius: 40,
                    ),
                    const SizedBox(height: 10),
                    const Text('Wahida Ismail'),
                    const SizedBox(height: 50),
                    Container(
                      width: double.infinity,
                      height: 50,
                      margin: const EdgeInsets.only(left: 0, right: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text('Emergency Contact'),
                    ),
                    const Spacer(),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        margin: const EdgeInsets.only(left: 0, right: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Text('Log Out'),
                      ),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
            body: models.isEmpty
                ? const Center(
                    child: Text('Add Object'),
                  )
                : ListView.builder(
                    itemCount: models.length,
                    itemBuilder: (context, index) {
                      return Slidable(
                        startActionPane: ActionPane(
                            motion: const StretchMotion(),
                            children: [
                              SlidableAction(
                                borderRadius: BorderRadius.circular(10),
                                onPressed: (value) {
                                  controller.deleteInList(index);
                                },
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white,
                                icon: Icons.delete_outline,
                              ),
                            ]),
                        child: Container(
                          height: 100,
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.only(left: 20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Text(models[index].title.toString()),
                            ],
                          ),
                        ),
                      );
                    }),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Get.to(() => const AddObject());
              },
              child: const Icon(Icons.add),
            ),
          );
        });
  }
}
