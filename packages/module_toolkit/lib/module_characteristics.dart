// Copyright 2016 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

/// UI modules should have a directionaility characteristic
/// Is the content designed to be viewed vertically or horizontally?
/// The directionaility should also be how the UI module handles overflow or
/// scrolling.
enum DirectionalCharacteristic {
  /// Module is biased to a vertical directionality
  vertical,
  /// Module is biased to a hozitonal directionality
  horizontal,
  /// Module is neither biased vertically or horizontally
  equal,
}

/// UI modules have varying levels of interactivity. There are certain
/// situations where a parent module would prefer to compose relatively
/// 'static' modules.
///
/// An example is if you have a Youtube module that already is playing a video,
/// most likely, you don't want another module composed next to it that also
/// plays a conflicting video.
enum InteractivityCharacteristic {
  /// Module is pretty much staic
  readOnly,
  /// Module has click/tap affordances but is not super dynamic
  clickable,
  /// Module will be playing audio
  activeAudio,
  /// Module will be playing video
  activeVideo,
}

/// Represents the charactertic of a given module.
class ModuleCharacteristics {
  /// Desired slot 'direction'
  DirectionalCharacteristic direction;

  /// Desired slot 'interactivity'
  InteractivityCharacteristic interactivity;

  /// Constructor
  ModuleCharacteristics({
    this.direction,
    this.interactivity,
  });
}

/// A Widget can implement the ModularModule interface so we can look it up
/// and match it with the resolver
abstract class ModularModule {
  /// Return the [ModuleCharacteristics] of the given module.
  ModuleCharacteristics getModuleCharacteristic();

  /// Return the sizen constraints of the given module based which is
  /// represented by Flutter's BoxContraints class.
  /// https://docs.flutter.io/flutter/material/BoxConstraints-class.html
  BoxConstraints getSizeContraints();
}
