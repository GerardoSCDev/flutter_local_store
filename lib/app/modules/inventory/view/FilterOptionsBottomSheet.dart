import 'package:flutter/material.dart';

class FilterOptionsBottomSheet extends StatelessWidget {
  const FilterOptionsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 425,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              width: 100,
              height: 5,
              margin: const EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black),
            ),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: ElevatedButton(
                      child: Text('Limpiar'),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xFF032030)
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
                padding: const EdgeInsets.only(right: 15, left: 15, top: 5),
              child: Row(
                children: [

                  Column(
                    children: [
                      const Text('Existencia'),
                      Checkbox(
                        checkColor: Colors.white,
                        value: true,
                        onChanged: (bool? value) {},
                      )
                    ],
                  ),

                  const Spacer(),

                  Column(
                    children: [
                      const Text('Media'),
                      Checkbox(
                        checkColor: Colors.white,
                        value: true,
                        onChanged: (bool? value) {},
                      )
                    ],
                  ),

                  const Spacer(),

                  Column(
                    children: [
                      const Text('Inexistente'),
                      Checkbox(
                        checkColor: Colors.white,
                        value: true,
                        onChanged: (bool? value) {},
                      )
                    ],
                  ),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
