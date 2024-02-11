import 'package:flutter/material.dart';

import 'add_new_product_screen.dart';
import 'edit_product_screen.dart';
/// enum create for PopupMenu
enum PopupMenuType { edit, delete }

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    /// Scaffold Start
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product list'),
      ),

      /// ListView.builder Start
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          /// ListTile Start
          return ListTile(
            /// leading always add Right side
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D'),
            ),
            /// title Start
            title: const Text('Product name'),
            /// subtitle Start
            subtitle: const Wrap(
              /// spacing add for children spacing
              spacing: 16,
              children: [
                Text('Product code'),
                Text('Product unit price'),
                Text('Product total price'),
                Text('Product quantity'),
              ],
            ),
            /// subtitle End


            /// trailing in PopupMenuButton Start


            /// edit and delete add in PopupMenuButton before enum create
            /// PopupMenuButton always add left side in trailing


            trailing: PopupMenuButton<PopupMenuType>(
              onSelected: onTapPopUpMenuButton,
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: PopupMenuType.edit,
                  child: Row(
                    children: [
                      Icon(Icons.edit),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Edit'),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: PopupMenuType.delete,
                  child: Row(
                    children: [
                      Icon(Icons.delete_outline),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Delete'),
                    ],
                  ),
                ),
              ],
            ),
            /// trailing in PopupMenuButton End
          );
        },
      ),

      /// ListView.builder End
      /// FloatingActionButton.extended Start
      ///FloatingActionButton create go to AddNewProductScreen
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewProductScreen(),
            ),
          );
        },
        icon: const Icon(Icons.add),
        label: const Text('Add'),
      ),

      /// FloatingActionButton.extended End
    );

    /// Scaffold  end
  }


  /// Custom onTapPopUpMenuButton crate
  void onTapPopUpMenuButton(PopupMenuType type) {
    switch (type) {
      case PopupMenuType.edit:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EditProductScreen(),
          ),
        );
        break;
      case PopupMenuType.delete:
        _showDeleteDialog();
        break;
    }
  }
  /// Custom onTapPopUpMenuButton End

  /// Custom _showDeleteDialog Start
  void _showDeleteDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Delete Product'),
            content:
            const Text('Are you sure that you want to delete this product'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Yes, Delete',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          );
        });
  }

/// Custom _showDeleteDialog End
}