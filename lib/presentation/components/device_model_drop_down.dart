import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_network/data/model/ubntCategory/device_model_model.dart';
import 'package:it_network/presentation/controller/ubntCategory/ubnt_bloc.dart';
import 'package:it_network/presentation/controller/ubntCategory/ubnt_event.dart';
import 'package:it_network/presentation/controller/ubntCategory/ubnt_state.dart';

class GetDeviceModelComponent extends StatelessWidget {
  GetDeviceModelComponent({Key? key}) : super(key: key);

  DeviceMModel? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UbntBloc, UbntState>(
        buildWhen: (previous, current) => true,
        builder: (context, state){
          var bloc = UbntBloc.get(context);
          print("CURRENT STATE : ${state}\n");
          return DropdownButtonHideUnderline(
              child: DropdownButton2<DeviceMModel>(
                isExpanded: true,
                hint: Text(
                  bloc.selectedDeviceModel == null ? 'Select Item' : bloc.selectedDeviceModel!.deviceModelName,
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).hintColor,
                  ),
                ),
                items: state.getDeviceModelList
                    .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(
                    item.deviceModelName,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ))
                    .toList(),
                value: bloc.selectedDeviceModel,
                onChanged: (value) {
                  bloc.selectedDeviceModel = value!;
                  bloc.add(ChangeSelectedDeviceModelEvent(value));
                },
                buttonStyleData: const ButtonStyleData(
                  height: 40,
                  width: 220,
                ),
                dropdownStyleData: const DropdownStyleData(
                  maxHeight: 200,
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                ),
                dropdownSearchData: DropdownSearchData(
                  searchController: textEditingController,
                  searchInnerWidgetHeight: 50,
                  searchInnerWidget: Container(
                    height: 50,
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 4,
                      right: 8,
                      left: 8,
                    ),
                    child: TextFormField(
                      expands: true,
                      maxLines: null,
                      controller: textEditingController,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        hintText: 'Search for an item...',
                        hintStyle: const TextStyle(fontSize: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  searchMatchFn: (item, searchValue) {
                    return (item.value.toString().contains(searchValue));
                  },
                ),
                //This to clear the search value when you close the menu
                onMenuStateChange: (isOpen) {
                  if (!isOpen) {
                    textEditingController.clear();
                  }
                },
          ),
          );
        },
    );
  }
}