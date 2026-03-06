// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:getx_initial_setup/modules/dashboard/data/model/tree_model.dart';
import 'package:getx_initial_setup/modules/dashboard/presentation/controller/dashboard_controller.dart';

class TreeViewLocal extends GetView<DashboardController> {
  const TreeViewLocal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.isTreeDataLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SizedBox(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        height(context),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "User Hierarchy",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: MyTreeView(
                            treeItems:
                                controller.treeList.value.client_id != null
                                    ? [controller.treeList.value]
                                    : [],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}

class MyTreeView extends StatefulWidget {
  const MyTreeView({
    super.key,
    required this.treeItems,
  });
  final List<TreeModel> treeItems;

  @override
  State<MyTreeView> createState() => _MyTreeViewState();
}

class _MyTreeViewState extends State<MyTreeView> {
  late final TreeController<TreeModel> treeController;

  @override
  void initState() {
    super.initState();
    treeController = TreeController<TreeModel>(
      roots: widget.treeItems,
      childrenProvider: (TreeModel node) => node.children!,
    );
    treeController.expandAll();
  }

  @override
  void dispose() {
    treeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TreeView<TreeModel>(
      treeController: treeController,
      nodeBuilder: (BuildContext context, TreeEntry<TreeModel> entry) {
        return MyTreeTile(
          key: ValueKey(entry.node),
          entry: entry,
          onTap: () => treeController.toggleExpansion(entry.node),
        );
      },
    );
  }
}

class MyTreeTile extends StatelessWidget {
  const MyTreeTile({
    super.key,
    required this.entry,
    required this.onTap,
  });

  final TreeEntry<TreeModel> entry;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: TreeIndentation(
        entry: entry,
        guide: const IndentGuide.connectingLines(indent: 48),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(4, 8, 8, 8),
          child: Row(
            children: [
              if (entry.hasChildren && entry.isExpanded)
                const Icon(Icons.arrow_downward_rounded, color: Colors.black),
              if (entry.hasChildren && !entry.isExpanded)
                const Icon(Icons.arrow_forward, color: Colors.black),
              FolderButton(
                  openedIcon: entry.node.account_type?.toLowerCase() ==
                              "admin" ||
                          entry.node.account_type?.toLowerCase() == "superadmin"
                      ? SvgPicture.asset(
                          'assets/svg/admin.svg',
                          color: Colors.black,
                          height: 28,
                          width: 28,
                        )
                      : entry.node.account_type?.toLowerCase() == "master"
                          ? SvgPicture.asset(
                              'assets/svg/master.svg',
                              color: Colors.black,
                              height: 28,
                              width: 28,
                            )
                          : SvgPicture.asset(
                              'assets/svg/user.svg',
                              color: Colors.black,
                              height: 16,
                              width: 16,
                            ),
                  closedIcon: entry.node.account_type?.toLowerCase() ==
                              "admin" ||
                          entry.node.account_type?.toLowerCase() == "superadmin"
                      ? SvgPicture.asset(
                          'assets/svg/admin.svg',
                          color: Colors.black,
                          height: 28,
                          width: 28,
                        )
                      : entry.node.account_type?.toLowerCase() == "master"
                          ? SvgPicture.asset(
                              'assets/svg/master.svg',
                              color: Colors.black,
                              height: 28,
                              width: 28,
                            )
                          : SvgPicture.asset(
                              'assets/svg/user.svg',
                              color: Colors.black,
                              height: 16,
                              width: 16,
                            ),
                  isOpen: entry.hasChildren ? entry.isExpanded : null,
                  onPressed: entry.hasChildren ? onTap : null,
                  color: Colors.black,
                  icon: entry.node.account_type?.toLowerCase() == "admin" ||
                          entry.node.account_type?.toLowerCase() == "superadmin"
                      ? SvgPicture.asset(
                          'assets/svg/admin.svg',
                          color: Colors.black,
                          height: 28,
                          width: 28,
                        )
                      : entry.node.account_type?.toLowerCase() == "master"
                          ? SvgPicture.asset(
                              'assets/svg/master.svg',
                              color: Colors.black,
                              height: 28,
                              width: 28,
                            )
                          : SvgPicture.asset(
                              'assets/svg/user.svg',
                              color: Colors.black,
                              height: 16,
                              width: 16,
                            )),
              Text(
                entry.node.username ?? '',
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

SizedBox height(BuildContext context) => const SizedBox(
      height: 20,
    );
