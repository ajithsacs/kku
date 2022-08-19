import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mythings_app/demo/string_const.dart';

class MyNewFormState extends StatelessWidget {
  MyNewFormState({Key? key}) : super(key: key);
  final State st = Get.put(State());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Obx(() => _body(context, st.ispasswordvisible)),
      bottomNavigationBar: _button(context),
    );
  }
}

_appbar() {
  return AppBar(
    elevation: 0,
    leading: const Icon(
      Icons.arrow_back_ios,
      color: Colors.black54,
    ),
    backgroundColor: Colors.white,
  );
}

_body(context, ispassword) {
  return SingleChildScrollView(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _text(),
      _textfiled(Appconst.firsname, " ", context),
      _textfiled(Appconst.lastname, " ", context),
      _textfiled(Appconst.dob, "date", context),
      _textfiled(Appconst.email, "email", context),
      _textfiled(Appconst.password, "password", context, ispassword),
    ],
  ));
}

_textfiled(title, imag, context, [ispassword]) {
  if (imag == " ") {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            labelText: title,
            suffix: const Icon(
              Icons.close_rounded,
              color: Colors.black54,
            )),
      ),
    );
  } else if (imag == "password") {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
            // validator: (value) {},
            obscureText: ispassword,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: title,
              suffixIcon: ispassword
                  ? IconButton(
                      icon: Icon(Icons.visibility),
                      onPressed: () {},
                    )
                  : const Icon(Icons.visibility_off),
              // suffix: _passwordVisible
              //     ? const Icon(
              //         Icons.close_rounded,
              //         color: Colors.black54,
              //       )
              // : null
            )));
  } else if (imag == "email") {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: title,
              suffix: const Icon(
                Icons.email,
                color: Colors.black54,
              )),
        ));
  } else if (imag == "date") {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: title,
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.calendar_month,
              color: Colors.black54,
            ),
            onPressed: () {
              showDateRangePicker(
                  context: context,
                  firstDate: DateTime(1970),
                  lastDate: DateTime.now());
            },
          ),
        ),
      ),
    );
  } else {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: title,
        ),
      ),
    );
  }
}

_roundicon(image) {
  MaterialButton(
      onPressed: () {},
      padding: const EdgeInsets.all(16),
      shape: const CircleBorder(),
      child: image);
  return;
  // Icon(
  //           Icons.clear_rounded,
  //           color: Colors.black,
  //         );
}

_text() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      Appconst.addyourinfo,
      style: const TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

_button(context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(8.0),
        primary: Colors.black,
        minimumSize: const Size.fromHeight(50)),
    child: const Text("Continue"),
    onPressed: () async {},
  );
}

class State extends GetxController {
  RxBool ispasswordvisible = false.obs;
  void statechange() {
    ispasswordvisible.toggle();
  }
}
