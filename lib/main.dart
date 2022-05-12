import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/app.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MaterialApp(
        home: App(),
      ),
    ),
  );
}



/// Types of Riverpod Providers:
///
///
/// a. Provider :: Cache
/// 
/// b. StateProvider :: Watch single data to update UI
/// 
/// c. StateNotifierProvider :: Watch single data or object to update UI
/// 
/// d. FutureProvider :: Future data cache
/// 
/// e. StreamProvider :: Stream cache
/// 
/// 
/// watch :: show the value and update it instantly ---> works like notifylistener of simple provider
/// read :: show the value and update it after reload ---> only show the cache value
/// state :: after read the value, have to update the state ---> for update the value
/// 
/// 
/// family :: Provider.family<|returnType|, |parameterType|>((ref, sampleVal){})  --> for initialize provider with sampleVal
/// 
/// autoDispose :: Provider.autoDispose  ---> for dispose the provider's value when the widget is removed