// Copyright (c) 2017, filiph. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:gtag_analytics/gtag_analytics.dart';
import 'package:gtag_analytics/src/interop.dart';

void main() {
  final inProduction = const String.fromEnvironment('production') == 'true';
  final ga = new GoogleAnalytics(failSilently: inProduction);
  ga.config("GA_TRACKING_ID", options: Options(page_path: "/home"));
  ga.sendPageView();
  ga.sendCustom('choose_action', category: 'play');
}
