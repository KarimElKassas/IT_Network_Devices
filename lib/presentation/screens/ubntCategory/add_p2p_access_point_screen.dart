import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_network/presentation/components/device_model_drop_down.dart';
import 'package:it_network/presentation/controller/ubntCategory/ubnt_bloc.dart';
import 'package:it_network/presentation/controller/ubntCategory/ubnt_event.dart';

import '../../../core/services/service_locator.dart';
import '../../components/text_form_field_component.dart';

class AddP2PAccessPointScreen extends StatelessWidget {

  TextEditingController serialController = TextEditingController();
  TextEditingController ipController = TextEditingController();
  TextEditingController macController = TextEditingController();
  TextEditingController ssidController = TextEditingController();
  TextEditingController encryptionController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController detailsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => sl<UbntBloc>()..add(const GetDeviceModelEvent()),
        child: Scaffold(
          appBar: AppBar(title: Text("Add P2P Access Point", style: TextStyle(color: Colors.blue.shade800),),),
          body: Column(
            children: [
                GetDeviceModelComponent(),
                DefaultTextFieldComponent(
                  controller: serialController, isPassword: false, hintText: "Serial Number",
                  validate: (value){},
                ),
            ],
          ),
        )
    );
  }
}
