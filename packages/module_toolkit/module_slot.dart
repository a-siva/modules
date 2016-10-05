// Copyright 2016 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

/// Represents a single 'Module Slot'
class ModuleSlot extends StatelessWidget {

  /// Height of module slot
  double height;

  /// Width of module slot
  double width;

  /// Fallback module(widget) that will be used if no appropiate module can
  /// be resolved.
  Widget fallbackModule;

  /// Constructor
  ModuleSlot({
    @required this.height,
    @required this.width,
    Widget fallbackModule,
  });

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: height,
      width: width,
      // TODO(dayang): Add in resolver here
      child: new Container(),
    );
  }
}
