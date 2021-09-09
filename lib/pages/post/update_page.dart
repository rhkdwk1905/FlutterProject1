import 'package:flutter/material.dart';
import 'package:flutter_blog/components/custom_elevated_button.dart';
import 'package:flutter_blog/components/custom_text_form_field.dart';
import 'package:flutter_blog/components/custom_textarea.dart';
import 'package:flutter_blog/util/validators_util.dart';
import 'package:get/get.dart';

class UpdatePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              CustomTextFormField(
                hint: "Title",
                funcValidator: validateTitle,
                initialString: "원래 제목",
              ),
              Divider(),
              CustomTextarea(
                hint: "Your Message",
                initialString: "원래 내용" * 30,
              ),
              CustomElevatedButton(
                text: "수정",
                funcPageRoute: () {
                  if (_formKey.currentState!.validate()) {
                    Get.back();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
