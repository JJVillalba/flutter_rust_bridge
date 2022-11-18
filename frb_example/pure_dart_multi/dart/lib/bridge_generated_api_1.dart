// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.49.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names

import 'dart:convert';
import 'dart:async';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

import 'package:meta/meta.dart';
import 'dart:ffi';
import 'package:meta/meta.dart';
import 'dart:ffi' as ffi;

abstract class ApiClass1 {
  /// Documentation on a simple adder function.
  Future<int> simpleAdder1({required int a, required int b, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSimpleAdder1ConstMeta;
}

class ApiClass1Impl implements ApiClass1 {
  final ApiClass1Platform _platform;
  factory ApiClass1Impl(ExternalLibrary dylib) => ApiClass1Impl.raw(ApiClass1Platform(dylib));

  /// Only valid on web/WASM platforms.
  factory ApiClass1Impl.wasm(FutureOr<WasmModule> module) => ApiClass1Impl(module as ExternalLibrary);
  ApiClass1Impl.raw(this._platform);
  Future<int> simpleAdder1({required int a, required int b, dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_simple_adder_1(port_, api2wire_i32(a), api2wire_i32(b)),
        parseSuccessData: _wire2api_i32,
        constMeta: kSimpleAdder1ConstMeta,
        argValues: [a, b],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kSimpleAdder1ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "simple_adder_1",
        argNames: ["a", "b"],
      );

  void close() {
    _platform.close();
  }

// Section: wire2api

  int _wire2api_i32(dynamic raw) {
    return raw as int;
  }
}

// Section: api2wire

@protected
int api2wire_i32(int raw) {
  return raw;
}

class ApiClass1Platform extends FlutterRustBridgeBase<ApiClass1Wire> {
  final _port = RawReceivePort();
  NativePortType get port => _port.sendPort.nativePort;
  ApiClass1Platform(ffi.DynamicLibrary dylib) : super(ApiClass1Wire(dylib)) {
    dylib.lookupFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>), int Function(ffi.Pointer<ffi.Void>)>(
        'init_dart_api_dl')(ffi.NativeApi.initializeApiDLData);

    _port.handler = (response) {
      inner.dart_opaque_drop(response);
    };
    dylib.lookupFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>), int Function(ffi.Pointer<ffi.Void>)>(
        'init_dart_api_dl')(ffi.NativeApi.initializeApiDLData);
  }
  void close() {
    _port.close();
  }

  Object dart_opaque_get(raw) => inner.dart_opaque_get(raw);
// Section: api2wire

// Section: api_fill_to_wire

}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class ApiClass1Wire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  ApiClass1Wire(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  ApiClass1Wire.fromLookup(ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>('store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr.asFunction<void Function(DartPostCObjectFnType)>();

  void dart_opaque_drop(
    int ptr,
  ) {
    return _dart_opaque_drop(
      ptr,
    );
  }

  late final _dart_opaque_dropPtr = _lookup<ffi.NativeFunction<ffi.Void Function(uintptr_t)>>('dart_opaque_drop');
  late final _dart_opaque_drop = _dart_opaque_dropPtr.asFunction<void Function(int)>();

  Object dart_opaque_get(
    int ptr,
  ) {
    return _dart_opaque_get(
      ptr,
    );
  }

  late final _dart_opaque_getPtr = _lookup<ffi.NativeFunction<ffi.Handle Function(uintptr_t)>>('dart_opaque_get');
  late final _dart_opaque_get = _dart_opaque_getPtr.asFunction<Object Function(int)>();

  void wire_simple_adder_1(
    int port_,
    int a,
    int b,
  ) {
    return _wire_simple_adder_1(
      port_,
      a,
      b,
    );
  }

  late final _wire_simple_adder_1Ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Int32, ffi.Int32)>>('wire_simple_adder_1');
  late final _wire_simple_adder_1 = _wire_simple_adder_1Ptr.asFunction<void Function(int, int, int)>();

  void free_WireSyncReturnStruct(
    WireSyncReturnStruct val,
  ) {
    return _free_WireSyncReturnStruct(
      val,
    );
  }

  late final _free_WireSyncReturnStructPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturnStruct)>>('free_WireSyncReturnStruct');
  late final _free_WireSyncReturnStruct =
      _free_WireSyncReturnStructPtr.asFunction<void Function(WireSyncReturnStruct)>();
}

class _Dart_Handle extends ffi.Opaque {}

typedef DartPostCObjectFnType = ffi.Pointer<ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
typedef uintptr_t = ffi.UnsignedLong;
