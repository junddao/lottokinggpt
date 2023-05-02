import 'package:lottokinggpt/index.dart';

extension SingleChildScrollViewScrollEffect on SingleChildScrollView {
  Widget scrollEffectOff() {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: this,
    );
  }
}

extension ListViewListViewScrollEffect on ListView {
  Widget scrollEffectOff() {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: this,
    );
  }
}

extension TabBarViewScrollEffect on TabBarView {
  Widget scrollEffectOff() {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: this,
    );
  }
}

extension GridViewScrollEffect on GridView {
  Widget scrollEffectOff() {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: this,
    );
  }
}

extension NestedScrollViewScrollEffect on NestedScrollView {
  Widget scrollEffectOff() {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: this,
    );
  }
}
