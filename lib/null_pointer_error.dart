// class Person {
//   String? name;
// }
//
// String greetUser(Person? user1) {
//   return "Hello ${user1!.name!}";
// }
//
// void main() {
//   Person? u;
//   print(greetUser(u));
// }
//ERROR WHEN FIRST RUNNING
// Unhandled exception:
// Null check operator used on a null value
// #0      greetUser (package:mobile_lab14/null_pointer_error.dart:6:24)
// #1      main (package:mobile_lab14/null_pointer_error.dart:11:9)
// #2      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:314:19)
// #3      _RawReceivePort._handleMessage (dart:isolate-patch/isolate_patch.dart:193:12)
// ---------------------- SECOND VERSION WITH NO ERROR ------------------------
class Person {
  String? name;
  Person(this.name);
}

String greetUser(Person? user1) {
  return "Hello ${user1!.name!}";
}

void main() {
  Person? u = Person("Sayidabdullaxon");
  print(greetUser(u));
}
// now no error