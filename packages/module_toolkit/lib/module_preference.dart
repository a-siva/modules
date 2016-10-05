// Copyright 2016 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'module_characteristics.dart';

/// Some module characterics will be necessary, some are optional
enum PreferenceLevel {
  /// Required
  needToHave,
  /// Nice to have, but not Required
  niceToHave,
}

/// Preference for directionality
class DirectionalPreference {
  /// Desired direction
  DirectionalCharacteristic direction;

  /// Level/constraint of preference
  PreferenceLevel level;

  /// Constructor
  DirectionalPreference({
    this.direction,
    this.level,
  });
}

/// Preference for Interactivity
class InteractivityPreference {
  /// Desired interactivity
  InteractivityCharacteristic interactivity;

  /// Level/constraint of preference
  PreferenceLevel level;

  /// Constructor
  InteractivityPreference({
    this.interactivity,
    this.level,
  });
}

/// Represents a 'preference' that a parent module might request for its slot
class ModulePreference {

  /// Desired slot 'direction'
  DirectionalPreference direction;

  /// Desired slot 'interactivity'
  InteractivityPreference interactivity;

  /// Constructor
  ModulePreference({
    this.direction,
    this.interactivity,
  });
}
