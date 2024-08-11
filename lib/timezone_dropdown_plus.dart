library timezone_dropdown_plus;

import 'package:flutter/material.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tzdata;
import 'package:dropdown_search/dropdown_search.dart';

export 'package:dropdown_search/dropdown_search.dart';

import 'package:flutter_native_timezone_updated_gradle/flutter_native_timezone.dart';

typedef TimezoneSelectedFunction = void Function(String timeZone);

class TimezoneDropdown extends StatefulWidget {
  final String? value;
  final String? hintText;
  final TimezoneSelectedFunction onTimezoneSelected;
  final Widget Function(BuildContext, String?)? dropdownBuilder;
  final DropdownButtonProps? dropdownButtonProps;
  final DropDownDecoratorProps? dropdownDecoratorProps;
  final PopupProps<String>? popupProps;
  final Future<bool?> Function(String?, String?)? onBeforeChange;
  final Future<bool?> Function(String?)? onBeforePopupOpening;
  final AutovalidateMode? autoValidateMode = AutovalidateMode.disabled;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final bool Function(String, String)? filterFn;
  final String Function(String)? itemAsString;
  final bool enabled;

  const TimezoneDropdown(
      {super.key,
      this.value,
      this.hintText,
      required this.onTimezoneSelected,
      this.dropdownBuilder,
      this.dropdownButtonProps,
      this.dropdownDecoratorProps,
      this.popupProps,
      this.onBeforeChange,
      this.onBeforePopupOpening,
      this.onSaved,
      this.validator,
      this.filterFn,
      this.itemAsString,
      this.enabled = true});

  @override
  TimezoneDropdownState createState() => TimezoneDropdownState();
}

class TimezoneDropdownState extends State<TimezoneDropdown> {
  final List<String> timezones = [];
  String? myTz = "";

  @override
  void initState() {
    super.initState();

    tzdata.initializeTimeZones();

    for (var element in tz.timeZoneDatabase.locations.keys) {
      timezones.add(element);
    }

    if (widget.value != null) {
      myTz = widget.value;
    } else {
      _loadTimeZones();
    }
  }

  void _loadTimeZones() async {
    myTz = await FlutterNativeTimezone.getLocalTimezone();

    widget.onTimezoneSelected(myTz!);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
        dropdownBuilder: widget.dropdownBuilder,
        dropdownButtonProps:
            widget.dropdownButtonProps ?? const DropdownButtonProps(),
        popupProps: widget.popupProps ?? const PopupProps.menu(),
        dropdownDecoratorProps: const DropDownDecoratorProps(),
        onBeforeChange: widget.onBeforeChange,
        onBeforePopupOpening: widget.onBeforePopupOpening,
        autoValidateMode: widget.autoValidateMode,
        enabled: widget.enabled,
        onSaved: widget.onSaved,
        validator: widget.validator,
        filterFn: widget.filterFn,
        itemAsString: widget.itemAsString,
        onChanged: (String? data) {
          widget.onTimezoneSelected(data!);
          myTz = data;
          setState(() {});
        },
        selectedItem: myTz!,
        items: timezones);
  }
}
