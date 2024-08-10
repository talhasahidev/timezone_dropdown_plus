<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
<h1 align="center">
<img src="https://github.com/user-attachments/assets/4bcdac8f-d73d-4bf0-9989-3e24220725bf" height="50">  Time Zone Dropdown Plus ➕
  <br>
</h1>

<h4 align="center">
  <a href="https://flutter.dev" target="_blank">Flutter</a> Plugin for selecting time zone with search filter and different selection types with highly customization options.
</h4>

<p align="center">
  <a href="https://pub.dev/packages/dropdown_search">
    <img src="https://img.shields.io/badge/build-passing-brightgreen" alt="Build">
  </a>
  <a href="https://pub.dev/packages/timezone_dropdown_plus"><img src="https://img.shields.io/badge/version-1.0.0-blue"></a>
   <a href="https://www.upwork.com/freelancers/~01c846f88ea4efa042"><img src="https://img.shields.io/badge/Hire_Me_On_Upwork-Talha_Bin_Naeem-ge600?logo=upwork&logoColor=white"></a>
 <a href="https://www.upwork.com/freelancers/~01c846f88ea4efa042"><img src="https://img.shields.io/badge/Get_your_dream_app_now-Flutter_Developer-%2341a5ee?logo=flutter&logoColor=white"></a>
</p>

<p align="center"> 
   <a href="https://github.com/talhasahidev/"><img src="https://img.shields.io/badge/GitHub-talhasahidev-%23333?logo=github&logoColor=white"></a>
  
  <a href="https://buymeacoffee.com/talhasahi">
    <img src="https://img.shields.io/badge/$-donate-ff69b4.svg?maxAge=2592000&amp;style=flat">
  </a>
</p>

<p align="center">Please give me a star ⭐:<br>
With :heart: by <a href="https://github.com/talhasahidev/timezone_dropdown_plus"><b>talhasahidev</b></a><br>
</p><br>


<p align="center">
  <a href="#features">Features</a> •
  <a href="https://github.com/talhasahidev/timezone_dropdown_plus/tree/main/example">Examples</a> •
  <a href="#license">License</a>
</p>





## Features
- Automatic detect device time zone and set it to defaul value.
- Comes with search input field to allow users to search any time zone (it can be enable/disable).
- Different selection types such as dropdown menu, modalbottam sheet, bottom sheet, dialog.
- Easily customizeable with highly customization options.

## Screenshots
<table>
    <tr>
        <td>
           <img src="https://github.com/user-attachments/assets/26a9b011-7e64-4e69-bc62-b274888a2fc8" alt="Screenshot_20240810-093320" style="width: 100%; display: block; margin-bottom: 10px;">
            <img src="https://github.com/user-attachments/assets/778c942d-ae0f-4f76-8a0c-e2909c165793" alt="Screenshot_20240809-182358" style="width: 100%; display: block; margin-bottom: 10px;">
           <img src="https://github.com/user-attachments/assets/116e4e11-0417-4563-8dd5-6ac18415dfdb" alt="Screenshot_20240809-181830" style="width: 100%; display: block; margin-bottom: 10px;">
        </td>
        <td>
            <img src="https://github.com/user-attachments/assets/371274cd-b178-468d-9d13-6b0bb12b2e8a" alt="Screenshot_20240810-092221" style="width: 100%; display: block; margin-bottom: 10px;">
            <img src="https://github.com/user-attachments/assets/cadaa234-4761-4196-9e5f-30a2b638a8cb" alt="Screenshot_20240810-093551" style="width: 100%; display: block; margin-bottom: 10px;">
          <img src="https://github.com/user-attachments/assets/2a78b8d6-796a-499e-8b67-5ac681bec2cd" alt="Screenshot_20240810-093019" style="width: 100%; display: block; margin-bottom: 10px;">
        </td>
      <td>
             <img src="https://github.com/user-attachments/assets/1568d70a-139e-45ea-abbb-3569266123dc" alt="Screenshot_20240809-181621" style="width: 100%; display: block; margin-bottom: 10px;">
         <img src="https://github.com/user-attachments/assets/4887de2f-ef53-4b76-8a7a-fb2b6aa36ab9" alt="Screenshot_20240810-092221" style="width: 100%; display: block; margin-bottom: 10px;">
        </td>
    </tr>
    <tr>
        <td>
           <img src="https://github.com/user-attachments/assets/58895046-eac7-4046-8271-99084ebd40a2" alt=Screenshot_20240809-181745" style="width: 100%; display: block; margin-bottom: 10px;">
        </td>
        <td>
           <img src="https://github.com/user-attachments/assets/0cd34f14-72cc-4fbc-953d-b8c329714f4f" alt="Screenshot_20240810-092128" style="width: 100%; display: block; margin-bottom: 10px;">
        </td>
    </tr>
</table>

## packages.yaml
```yaml
timezone_dropdown_plus: <lastest version>

```
## Import
```dart
import 'package:timezone_dropdown_plus/timezone_dropdown_plus.dart';
```

## Simple implementation
```dart
TimezoneDropdown(
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
```


## Support Me

☕ Support My Work ☕
If this plugin has been a valuable asset to you—whether it helped you deliver your app with ease, saved you countless hours, or simply made your development process smoother—I would be deeply grateful for your support.

Creating and maintaining high-quality open-source tools takes a lot of time and dedication. If you appreciate the work put into this plugin and would like to show your support, buying me a cup of coffee is a wonderful way to contribute. Your support not only helps me stay motivated but also ensures that I can continue to enhance and maintain this project for everyone to benefit from.

Every cup of coffee symbolizes a boost of encouragement and a token of appreciation for the effort put into this plugin. It allows me to keep working on improving and expanding these tools, and helps me continue delivering valuable resources to the community.

Thank you for your support and for being a part of this journey!

<a href="https://buymeacoffee.com/talhasahi" target="_blank">
  <img src="https://www.codehim.com/wp-content/uploads/2022/09/bmc-button-640x180.png" height=50; alt="Buy Me A Coffee" style="border: none;"/>
</a>


## License

MIT



