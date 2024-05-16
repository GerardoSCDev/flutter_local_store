import 'package:flutter/material.dart';

class NewProductFormBottomSheet extends StatelessWidget {
  const NewProductFormBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 425,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 100,
              height: 5,
              margin: const EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black),
            ),
            Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(
                        left: 10.0, right: 10.0, bottom: 30, top: 20),
                    height: 30,
                    width: double.infinity,
                    child: const Center(
                      child: Text(
                        'Nuevo producto',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.only(
                      left: 10.0, right: 10.0, bottom: 30),
                  height: 50,
                  width: double.infinity,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Código de Barras',
                        suffixIcon: InkWell(
                          onTap: () {},
                          child: const Icon(Icons.document_scanner_outlined),
                        )),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 10.0, right: 10.0, bottom: 30),
                  height: 50,
                  width: double.infinity,
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Producto',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 10.0, right: 10.0, bottom: 30),
                  height: 50,
                  width: double.infinity,
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Cantidad',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 10.0, right: 10.0, bottom: 30),
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF032030),
                    ),
                    child: const Text(
                      'Guardar',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
