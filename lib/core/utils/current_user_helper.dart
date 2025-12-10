import '../services/session_manager.dart';

class CurrentUserHelper {
  static final _session = SessionController.instance;

  static String? get userName =>
      _session.getUserDetails.user?.displayName ?? "Guest";

  static String? get userId => _session.getUserDetails.user?.userId ?? "";

  static String? get userPhone => _session.getUserDetails.user?.userName ?? "";

  static int? get tenantId => _session.getUserDetails.user?.tenantId ?? 0;

  static String? get token => _session.getUserDetails.token ?? "";

  static bool get isLoggedIn => _session.islogin;

  static int get salesmanId => _session.getUserDetails.user?.salesmanId ?? 0;

  static bool get isAllowChangeBookingPrice =>
      _session.getUserDetails.user?.salesman?.isAllowChangeBookingPrice ??
      false;
  static bool get isAllowChangeBookingDisc =>
      _session.getUserDetails.user?.salesman?.isAllowChangeBookingDisc ?? false;
  static bool get isAllowChangeBookingBonus =>
      _session.getUserDetails.user?.salesman?.isAllowChangeBookingBonus ??
      false;
}
