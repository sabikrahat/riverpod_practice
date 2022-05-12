# riverpod_practice

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



## Flutter Riverpod [Personal Note]

Types of Riverpod Providers:

a. Provider :: Cache

b. StateProvider :: Watch single data to update UI

c. StateNotifierProvider :: Watch single data or object to update UI

d. FutureProvider :: Future data cache

e. StreamProvider :: Stream cache


watch :: show the value and update it instantly ---> works like notifylistener of simple provider
read :: show the value and update it after reload ---> only show the cache value
state :: after read the value, have to update the state ---> for update the value


family :: Provider.family<|returnType|, |parameterType|>((ref, sampleVal){})  --> for initialize provider with sampleVal

autoDispose :: Provider.autoDispose  ---> for dispose the provider's value when the widget is removed
