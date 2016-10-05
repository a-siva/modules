// Copyright 2016 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'module_data.dart';
import 'module_preference.dart';

/// Represents a single 'Module Slot'
class ModuleSlot extends StatelessWidget {

  /// Height of module slot
  double height;

  /// Width of module slot
  double width;

  /// Desired module preference for this slot
  ModulePreference preference;

  /// Module data for this slot
  ModuleData data;

  /// Fallback module(widget) that will be used if no appropiate module can
  /// be resolved.
  Widget fallbackModule;

  /// Constructor
  ModuleSlot({
    @required this.height,
    @required this.width,
    @required this.data,
    this.fallbackModule,
    this.preference
  });

  @override
  Widget build(BuildContext context) {
    // TODO(dayang): Make Query for Module preference
    Widget resolvedModule;
    return new Container(
      height: height,
      width: width,
      // TODO(dayang): Add in resolved module
      child: resolvedModule ?? fallbackModule,
    );
  }
}
