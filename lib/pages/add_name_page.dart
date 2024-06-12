import 'package:flutter/material.dart';
import 'package:requenes0397/services/firebase_service.dart';

class AddNamePage extends StatefulWidget {
  const AddNamePage({super.key});
  @override
  State<AddNamePage> createState() => _AddNamePageState();
}

class _AddNamePageState extends State<AddNamePage> {
  TextEditingController nameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Registrar Nombre',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff2b6fdc),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Registre el Nuevo Nombre.',
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  await addPeople(nameController.text).then((_) {
                    Navigator.pop(context);
                  });
                },
                child: const Text("Guardar"))
          ],
        ),
      ),
    );
  }
}
