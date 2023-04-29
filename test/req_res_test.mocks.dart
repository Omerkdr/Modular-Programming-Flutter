// Mocks generated by Mockito 5.4.0 from annotations
// in veli_capraz/test/req_res_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i6;

import 'package:mockito/mockito.dart' as _i1;
import 'package:veli_capraz/303/reqrest_resource/model/resource_model.dart'
    as _i4;
import 'package:veli_capraz/303/reqrest_resource/service/reqres_service.dart'
    as _i2;
import 'package:veli_capraz/303/reqrest_resource/viewModel/req_res_provider.dart'
    as _i3;
import 'package:veli_capraz/product/global/resource_context.dart' as _i5;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeIReqresService_0 extends _i1.SmartFake
    implements _i2.IReqresService {
  _FakeIReqresService_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ReqResProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockReqResProvider extends _i1.Mock implements _i3.ReqResProvider {
  MockReqResProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.IReqresService get reqresService => (super.noSuchMethod(
        Invocation.getter(#reqresService),
        returnValue: _FakeIReqresService_0(
          this,
          Invocation.getter(#reqresService),
        ),
      ) as _i2.IReqresService);
  @override
  List<_i4.Data> get resources => (super.noSuchMethod(
        Invocation.getter(#resources),
        returnValue: <_i4.Data>[],
      ) as List<_i4.Data>);
  @override
  set resources(List<_i4.Data>? _resources) => super.noSuchMethod(
        Invocation.setter(
          #resources,
          _resources,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get isLoading => (super.noSuchMethod(
        Invocation.getter(#isLoading),
        returnValue: false,
      ) as bool);
  @override
  set isLoading(bool? _isLoading) => super.noSuchMethod(
        Invocation.setter(
          #isLoading,
          _isLoading,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);
  @override
  void saveToLocale(_i5.ResourceContext? resourceContext) => super.noSuchMethod(
        Invocation.method(
          #saveToLocale,
          [resourceContext],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addListener(_i6.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i6.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
