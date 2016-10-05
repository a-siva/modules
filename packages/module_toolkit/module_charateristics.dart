// Copyright 2016 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// UI modules should specify a directional preference:
/// Is the content designed to be viewed vertically or horizontally.
/// The directionaility should also be how the UI module handles overflow or
/// scrolling.
enum DirectionalPreference {
  /// Module is biased to a vertical directionality
  vertical,
  /// Module is biased to a hozitonal directionality
  horizontal,
  /// Module is neither biased vertically or horizontally
  equal,
}

/// UI modules should specify how 'interactive' they are. There are certain
/// situations where a parent module would prefer to compose relatively
/// 'static' modules.
///
/// An example is if you have a Youtube module that already is playing a video,
/// most likely, you don't want another module composed next to it that also
/// plays a conflicting video.
enum InteractivityPreference {
  /// Module is pretty much staic
  readOnly,
  /// Module has click/tap affordances but is not super dynamic
  clickable,
  /// Module will be playing audio
  activeAudio,
  /// Module will be playing video
  activeVideo,
}

/// UI modules should specify the desired size in which they are given to
/// render.
// enum SizePreference {
//   small,
//   medium,
//   large,
// }
