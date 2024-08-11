import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timezone_dropdown_plus/timezone_dropdown_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Timezone DropDown Plus',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Timezone DropDown Plus')),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
TimezoneDropdown(
value: ' Africa/Addis_Ababa',
hintText: 'Select Timezone',
onTimezoneSelected: (v) {
debugPrint(v);
},
popupProps: const PopupProps.menu(
showSearchBox: true,
searchFieldProps: TextFieldProps(
padding: EdgeInsets.all(20),
decoration: InputDecoration(hintText: 'Search...'))),
dropdownButtonProps: const DropdownButtonProps(
icon: Icon(CupertinoIcons.chevron_up_chevron_down)))
            ])));
  }
}
