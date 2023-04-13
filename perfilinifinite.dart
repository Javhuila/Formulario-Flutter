import 'package:flutter/material.dart';
import 'package:flutter_frist/db/databaseper.dart';
import 'package:flutter_frist/src/proflutter/modelos/per_models.dart';

class PerfilInifinite extends StatelessWidget {
  PerfilInifinite({Key? key}) : super(key: key);
  final nameController = TextEditingController();
  final lastController = TextEditingController();
  final ageController = TextEditingController();
  final addressController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Registrar Usuarios'),
        ),
        body: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        maxLength: 25,
                        controller: nameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "No puede haber campos vacíos";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          label: Text("Nombre"),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        maxLength: 25,
                        controller: lastController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "No puede haber campos vacíos";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          label: Text("Apellido"),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        maxLength: 3,
                        controller: ageController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "No puede haber campos vacíos";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          label: Text("Edad"),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        maxLength: 20,
                        controller: addressController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "No puede haber campos vacíos";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          label: Text("Ciudad"),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // print("Enviado: " + nameController.text);

                            DataBasePer.insert(PerModels(
                                nameper: nameController.text,
                                lastper: lastController.text,
                                ageper: ageController.text));
                          }
                        },
                        child: const Text("Registrar"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
