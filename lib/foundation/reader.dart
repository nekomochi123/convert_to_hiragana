import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef Reader = T Function<T>(Refreshable<T> provider);
