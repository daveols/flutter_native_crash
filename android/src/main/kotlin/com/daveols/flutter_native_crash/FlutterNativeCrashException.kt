// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
package com.daveols.flutter_native_crash

import androidx.annotation.Keep

/**
 * This class is purely cosmetic - to indicate on the that it's a
 * FlutterNativeCrashException error rather than the generic `java.lang.RuntimeException`.
 *
 */
@Keep
class FlutterNativeCrashException internal constructor() : RuntimeException("This is a crash caused by calling .crash() in Dart.")