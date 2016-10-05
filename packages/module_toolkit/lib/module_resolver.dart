// Copyright 2016 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.



import 'module_characteristics.dart';
import 'module_preference.dart';
import 'module_data.dart';

/// Signature for a resolver
abstract class ModuleResolver {
  /// Resolves a module given the module data payload and preferences
  ModularModule resolve({
    ModuleData data,
    ModulePreference preference,
  });
}
