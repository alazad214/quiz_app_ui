const String baseUrl = "https://mattberman.softvencefsd.xyz/api";

class Endpoints {
  Endpoints._();

  static String register() => "/register";
  static String logIn() => "/login";
  static String logout() => "/logout";
  static String forget() => "/forget-password";
  static String verifyOtp() => "/verify-otp-reset-password";
  static String resetPassword() => "/reset-password";
  static String addInspection() => "/inspection-store";
}

final class PaymentGateway {
  PaymentGateway._();
  static String gateway() => "/create-payment-intent";
}

final class NetworkConstants {
  NetworkConstants._();
  static const ACCEPT = "Accept";
  static const APP_KEY = "App-Key";
  static const ACCEPT_LANGUAGE = "Accept-Language";
  static const ACCEPT_LANGUAGE_VALUE = "pt";
  static const APP_KEY_VALUE = String.fromEnvironment("APP_KEY_VALUE");
  static const ACCEPT_TYPE = "application/json";
  static const AUTHORIZATION = "Authorization";
  static const CONTENT_TYPE = "content-Type";
}
