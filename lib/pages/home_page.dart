import 'package:flutter/material.dart';
import 'package:testapp/components/todo_list.dart';
import 'package:testapp/components/dialog_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();

  List temp = [];

  void onChanged(index) => setState(() {
        temp[index]['status'] = !temp[index]['status'];
      });

  void onSave() => setState(() {
        temp.add({'textContent': _controller.text, 'status': false});
        _controller.clear();
        Navigator.of(context).pop();
      });

  void onCancel() => setState(() {
        _controller.clear();
        Navigator.of(context).pop();
      });

  void addToDoDialogBox() {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return DialogBox(
          controller: _controller,
          onSaveFunc: onSave,
          onCancelFunc: onCancel,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "TO-DO LIST",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: addToDoDialogBox,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: temp.length,
        itemBuilder: (_, index) {
          return ToDoListTile(
            checked: temp[index]['status'],
            onChangedFunc: (_) => onChanged(index),
            textContent: temp[index]['textContent'],
          );
        },
      ),
    );
  }
}
