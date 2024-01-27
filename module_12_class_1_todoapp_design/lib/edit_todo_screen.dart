
import 'package:flutter/material.dart';

class EditTodoScreen extends StatefulWidget {
  const EditTodoScreen({Key? key}) : super(key: key);

  @override
  State<EditTodoScreen> createState() => _AddNewTodoScreenState();
}

class _AddNewTodoScreenState extends State<EditTodoScreen> {
  /// _formKey Create for Validation
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  /// Controller create_1
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Edit To Do"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          ///_formKey set for validation
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                /// Controller set_2
                controller: _titleController,
                decoration: const InputDecoration(
                  hintText: "Title",
                ),

                ///validator logic create  start
                validator: (String? value) {
                  final v = value ?? '';
                  if (v.trim().isEmpty) {
                    return 'Enter your title here';
                  }
                  return null;
                },

                ///validator logic create End
              ),
              const SizedBox(height: 16),
              TextFormField(
                /// Controller set_2
                controller:  _descriptionController,
                maxLines: 5,
                maxLength: 150,
                decoration: const InputDecoration(hintText: "Description"),

                ///validator logic create  start
                validator: (String? value) {
                  //final v = value ?? '';
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter your title here';
                  }
                  return null;
                },

                ///validator logic create End
              ),
              const SizedBox(height: 16),

              ///SizedBox widget use for button
              SizedBox(
                /// below two code same working
                //width: double.infinity,
                width: MediaQuery.sizeOf(context).width,
                child: ElevatedButton(
                  onPressed: () {
                    ///validation key apply
                    if (_formKey.currentState!.validate()) {}
                    ;

                    ///back to before scrren
                   Navigator.pop(context);
                  },
                  child: const Text("Updat"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  /// Controller dispose step_03
  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }
}
